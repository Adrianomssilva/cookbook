class GroupsController < ApplicationController

  def new
    @group = Group.new()
  end

  def create
    @group = current_user.group.build(group_params)
  end

end
