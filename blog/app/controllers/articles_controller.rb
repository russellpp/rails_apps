class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def show
        @articles = Article.find(params[:id])
        render :show
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new
        @article.name = params[:name]
        @article.body = params[:body]
        
        if @article.save
            redirect_to articles_path
        else
            render :new, status: :unprocessable_entity
        end

    end

    def edit
        @article = Article.find(params[:id])
        render :edit
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:name, :body))
            redirect_to article_url(@article)
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash[:success] = "#{@article.name} successfully deleted"
         redirect_to articles_url
    end

    private

    def article_params
        params.require(:article).permit(:name, :body)
    end

end


