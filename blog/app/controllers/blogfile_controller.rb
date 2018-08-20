class BlogfileController < ApplicationController
  def index   
    @blogfiles = BlogFile.all   
  end   
    
  def new   
    @blogfile = BlogFile.new   
  end   
    
  def create   
    @blogfile = BlogFile.new(blogfile_params)   
       
    if @blogfile.save   
       redirect_to blogfiles_path, notice: "Successfully uploaded."   
    else   
       render "new"   
    end   
       
  end   
    
  def destroy   
    @blogfile = BlogFile.find(params[:id])   
    @blogfile.destroy   
    redirect_to blogfiles_path, notice:  "Successfully deleted."   
  end   
    
  private   
    def blogfile_params   
    params.require(:blogfile).permit(:name, :attachment)   
  end
end
