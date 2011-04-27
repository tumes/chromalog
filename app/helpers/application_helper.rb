module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end
  
  def header(header, &block)
    content_tag(:header, content_tag(:h2, "#{header}")) + 
    content_tag(:section, :class => "clearfix", &block)
  end
end
