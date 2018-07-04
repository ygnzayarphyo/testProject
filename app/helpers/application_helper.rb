module ApplicationHelper
  def full_title(page_title="")
    base_title="blog"
    if page_title.empty?
      base_title
    else page_title+" | "+base_title
    end
  end
  def current_class?(test_path)
    return 'active' if request.path==test_path
  end
end
