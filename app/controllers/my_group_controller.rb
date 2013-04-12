class MyGroupController < ActionController::Base
  # GET /my_group
  def index
  	@group = Group.find(params[:group_id])
    @members = User.where(:group_id => params[:group_id])
    @trackings = Tracking.includes(:item).where(:group_id => params[:group_id])
  end
end