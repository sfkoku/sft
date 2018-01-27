class Admin::LogsController < AdminController
  def index
    @logs = Log.joins(:user)
  end

  def show
    @log = Log.where(id: params[:id])
  end

  def update
   log = Log.find_by(id: params[:id]) 
   log.update(update_params)  
   redirect_to admin_logs_path
  end

  def destroy
  end
    private 

    def update_params
      params.require(:log).permit(:id, :is_processed)
    end

end
