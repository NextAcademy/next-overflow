class OnlySuperadminAuthorization < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject = nil)
    if user != nil && user.admin?
      return true
    end
    return false
  end

end