class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    if @group.save
      redirect_to groups_path, notice: '新增討論版成功'
    else
      render :new
    end

  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end

  private
  def group_params
    params.require(:group).permit(:title, :description)

  end
end
