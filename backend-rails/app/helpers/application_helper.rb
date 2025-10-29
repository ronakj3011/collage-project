module ApplicationHelper
  def page_title(title)
    content_for(:title) { "#{title} – HeartCare AI" }
  end
end
