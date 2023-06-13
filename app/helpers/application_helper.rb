module ApplicationHelper
  TEMP_USER_ID = 1

  def current_page(current_page, page)
    return 'btn-nav-selected' if current_page == page
    'btn-nav'
  end
end
