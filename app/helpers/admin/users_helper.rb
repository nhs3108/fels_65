module Admin::UsersHelper
  def color_depend_on_status user
    if user.admin?
      "text-danger"
    else
      user.activated ? "text-info" : "text-default"
    end
  end
end
