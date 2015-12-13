class ArticlesController < ApplicationController
  before_action :get_article, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # debugger
    # render plain: params.inspect
    @article = Article.new(article_params)
    @article.user = User.first

    if @article.save
      flash[:success] = 'Article was created !!! '
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:success] = 'Article was updated !!! '
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    flash[:danger] = 'Article was deleted'
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def get_article
    @article = Article.find(params[:id])
  end
end
