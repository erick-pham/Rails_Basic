class MyfilesController < ApplicationController
  def index
    @myfiles = Myfile.all
  end

  def new
    @myfile = Myfile.new
 end
 
 def create
    @myfile = Myfile.new(myfile_params)
    
    if @myfile.save
       redirect_to myfiles_path, notice: "The file #{@myfile.name} has been uploaded."
    else
       render "new"
    end
    
 end
 
 def destroy
    @myfile = Myfile.find(params[:id])
    @myfile.destroy
    redirect_to myfiles_path, notice:  "The file #{@myfile.name} has been deleted."
 end
 
 private
    def myfile_params
    params.require(:myfile).permit(:name, :attachment)
 end
end
