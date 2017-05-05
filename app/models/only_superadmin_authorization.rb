class OnlySuperadminAuthorization < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject = nil)
    if user != nil && user.superadmin?
      return true
    end
    return false
  end

end