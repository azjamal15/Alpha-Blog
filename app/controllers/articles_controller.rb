class ArticlesController < ApplicationController
  def show
    # debugger
    @article = Article.find(params[:id])
  end 

  def index 
    @articles = Article.all
  end  

  def new
  end
   
  def create 
    # render plain: params[:article]
    @article = Article.new(params.require(:article).permit(:title, :description))
    # render plain: @article.inspect
    @article.save
    # redirect_to article_path(@article) #Rails will extract id from @article object, and use it to form the path.
    redirect_to @article
  end  
end 