class AdminAuthorization < ActiveAdmin::AuthorizationAdapter
  def authorized?(action, subject = nil)
    return true if user.admin?
    if user.staff?
      return false if action == :destroy
      case subject
      when normalized(Announcement)
        return false
      else
        return true
      end
    end
  end
end
