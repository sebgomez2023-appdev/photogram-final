class UsersController < ApplicationController

  def list_users
    render({ :template => "users/list.html.erb" })
  end
end
