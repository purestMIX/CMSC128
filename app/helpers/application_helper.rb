module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  def require_admin()
    if(not current_user.admin?) 
      flash[:error]= "You are not allowed to perform this action"
      redirect_to medicines_path
    end
  end
end