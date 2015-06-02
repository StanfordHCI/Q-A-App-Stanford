module ApplicationHelper

  def body_class(class_name)
    content_for :body_class, class_name
  end

  def recent_questions
    Question.order('created_at DESC').limit(5)
  end

end
