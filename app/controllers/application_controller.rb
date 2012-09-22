class ApplicationController < ActionController::Base
  protect_from_forgery

  private

    def present_wait
      Wait.find(session[:wait_id])
    rescue ActiveRecord::RecordNotFound
      wait = Wait.create
      session[:wait_id] = wait.id
      wait
    end
end
