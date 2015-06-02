class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json, :html

  def create
    build_resource(sign_up_params)

    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource), status: :ok
      else
        expire_data_after_sign_in!
        render json: find_message(:"signed_up_but_#{resource.inactive_message}"), location: after_inactive_sign_up_path_for(resource), status: :ok
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      render json: resource.errors.full_messages, status: 422
    end
  end

end
