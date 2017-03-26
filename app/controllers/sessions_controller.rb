class SessionsController < BaseController
    
    def login
    end
    def logout
        reset_session
        
        redirect_to login_path
    end
    def authenticate
        user = User.find_by(email: params[:sessions][:email].downcase, password: params[:sessions][:password])
        if user
            # Log the user in and redirect to the user's show page.
            set_session_data(user)
            redirect_to users_path
        else
            # Create an error message.
            flash[:danger] = 'Invalid email/password combination' # Not quite right!
            render 'login'
        end
    end
    
    private
        def set_session_data (user)
            session[:current_user_id] = user.id
            session[:current_user_email] = user.email
            session[:current_user_username] = user.username
            session[:current_user_first_name] = user.first_name
            session[:current_user_last_name] = user.last_name
        end
end
