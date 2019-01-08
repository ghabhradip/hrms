class RegistrationsController < Devise::RegistrationsController

    private
  
    def sign_up_params
      params.require(:user).permit(:name, :company_name, :email, :password, :password_confirmation)
    end
end