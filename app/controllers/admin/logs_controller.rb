class Admin::LogsController < AdminController
  def index
    #未対応のものだけ
    @logs = Log.where(is_processed: 0).joins(:user)
  end

  def show
    @log = Log.find(params[:id])
  end

  def update
   log = Log.find_by(id: params[:id]) 
   if params[:log][:is_processed] == "x"
     log.update_attributes!(is_processed: 1)  
     redirect_to admin_log_path(params[:id]) and return
   end
   log.update_attributes!(is_processed: 0)  
   redirect_to admin_log_path(params[:id])
  end

  def destroy
  end

    private 

    def update_params
      params.require(:log).permit!
    end

end
