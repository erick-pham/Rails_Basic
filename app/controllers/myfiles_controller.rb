class MyfilesController < ApplicationController
  #before_action :authenticate_user!
  before_action :authenticate_user!, except: [:index]

  def index
    @myfiles = Myfile.all.order('created_at DESC')
    @count_files = @myfiles.count
  end

  def new
    @myfile = Myfile.new
 end
 
 def create
    params[:item_files]['file'].each do |f|
      @myfile = Myfile.new
      @myfile.attachment = f

      # take array string by split
      str = @myfile.attachment.to_s.split('/')
      @myfile.name = str[str.count-1]
      @myfile.save
    end
    redirect_to myfiles_path, notice: "The files has been uploaded."
    # @myfile = Myfile.new(myfile_params)
    # if @myfile.save
    #    redirect_to myfiles_path, notice: "The file #{@myfile.name} has been uploaded."
    # else
    #    render "new"
    # end   
 end
 
 def destroy
    @myfile = Myfile.find(params[:id])
    @myfile.destroy
    redirect_to myfiles_path, notice:  "The file #{@myfile.name} has been deleted."
 end
 
  
 def edit
  redirect_to myfiles_path
  # flash[:notice] = "Unfriend is successed"
  # redirect_to '/friends/index'
  end

 def delete
  @myfile = Myfile.find(params[:id_file])
  @myfile.destroy
  redirect_to myfiles_path, notice:  "The file #{@myfile.name} has been deleted."
  # flash[:notice] = "Unfriend is successed"
  # redirect_to '/friends/index'
end

 private
    def myfile_params
    params.require(:myfile).permit(:name, :attachment)
 end

end
