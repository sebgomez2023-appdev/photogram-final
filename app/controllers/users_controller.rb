class UsersController < ApplicationController

  def list_users
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :desc })
    render({ :template => "users/list.html.erb" })
  end

  def show
    the_id = params.fetch("an_id")

    matching_user = User.where({ :username => the_id })

    @the_user = matching_user.at(0)

    render({ :template => "users/show.html.erb" })
  end
end
