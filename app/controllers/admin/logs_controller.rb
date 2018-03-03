class Admin::LogsController < AdminController
  def index
    @logs = Log.joins(:user)
  end

  def show
    @log = Log.where(id: params[:id])
  end

  def update
   log = Log.find_by(id: params[:id]) 
   if params[:log][:is_processed] == "x"
     log.update_attributes!(is_processed: 1)  
     redirect_to admin_logs_path and return
   end
   log.update_attributes!(is_processed: 0)  
   redirect_to admin_logs_path
  end

  def destroy
  end

  def toggle_confirm
  end

    private 

    def update_params
      params.require(:log).permit!
    end

end
