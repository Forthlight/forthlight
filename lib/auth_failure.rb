# Overrides default Devise redirect on authentication failure (see also initializer/devise.rb)
class AuthFailure < Devise::FailureApp
  def redirect_url
    root_path
  end

  def respond
    if http_auth?
      http_auth
    else
      redirect
    end
  end
end