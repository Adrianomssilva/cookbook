class GroupsController < ApplicationController

  def new
    @group = Group.new()
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user

    if @group.save
      redirect_to @group
  end



  private

  def group_params
    params.require(:group).permit(:name)
  end
end
