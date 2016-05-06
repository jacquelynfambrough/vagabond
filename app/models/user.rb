class User < ActiveRecord::Base

  has_secure_password

  def self.confirm(params)
    @user = User.find_by_id({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
