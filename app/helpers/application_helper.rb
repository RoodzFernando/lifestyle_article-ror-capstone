module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Recipe Book'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end
end
