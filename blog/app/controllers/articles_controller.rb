#This class is inherited from ApplicationController when you created new controller.
class ArticlesController < ApplicationController

	#http_basic_authenticate_with name: "admin", password: "admin123", except: [:index, :create, :show] #User authentications.
  	before_action :set_articles, only: [:create, :edit]
  	before_action :authenticate_user!, except: [:create, :index, :show]
  	before_action :set_articles, only: [:show, :create, :edit]
  	before_action :authenticate_admin!, except: [:index, :show]
  	def new
  		@article = Article.new # initializing new article
	end						   #new function end
 
	def create

	  @article = Article.new(article_params) # creating new article and passing article_params
 		
 		if @article.save		 				 #check the new post is save d or not, if saved then redirect to the @article.
	 	   redirect_to @article
	  	else	
	  	  render 'new' 			#otherwise render to new page.
	  	end
	end						#create function end.

 	 def index	 			#definig the index function to display the all posts.
	    @articles = Article.all
	  end					#index function end.

	public
	  def article_params 	#defination of article_params.
	    params.require(:article).permit(:title, :text)
	end

	def show 				#show function to display the perticular post as per id.
		@article = Article.find(params[:id])
	end						#show function end

	def edit 				#edit function to edit the existing blog.
		@article = Article.find(params[:id])
	end						#edit fuinction end

	def update 				#update the blog.
 		 @article = Article.find(params[:id])
 
	 if @article.update(article_params)
	    redirect_to @article
	  else
	    render 'edit'
	 end
	end						#update function end


	def destroy 			#delete the blog as per blog id.
	  @article = Article.find(params[:id])
	  @article.destroy
	 
	  redirect_to @article
end							#destroy function end
end     					#class end