module ApplicationHelper

  def body_class(class_name)
    content_for :body_class, class_name
  end

  def recent_questions
    Question.order('created_at DESC').limit(5)
  end

  def active_nav(paths)
    paths = [paths] if paths.is_a? String
    'active' if paths.any? { |path| current_page?(path) }
  end

end
