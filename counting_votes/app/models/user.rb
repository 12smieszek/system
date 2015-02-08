class User < ActiveRecord::Base
  belongs_to :constituency

  ROLES = %w[local central admin]

  def user_params
    params.require(:user).permit(:admin)
  end

  acts_as_authentic do |config|
    config.validate_login_field = false
    config.validate_email_field = false
    config.validate_password_field = false
    config.crypted_password_field = :crypted_password
    config.require_password_confirmation = true
  end

  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

  @constituencies = Constituency.all.map do |constituency|
    [ constituency.name, constituency.id]
  end

end