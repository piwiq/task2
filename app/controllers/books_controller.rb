class BooksController < ApplicationController
  def index
    @book=Book.new
    @books=Book.all
  end

  def create
    @book=Book.new(book_params)#保存できなければ　@bookにエラ〜めっせが入る
    if @book.save
      flash[:notice] = "successfully"
      redirect_to book_path(@book.id)
    else
      @books=Book.all
      render :index
    end
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])#@にしないとエラーメッセをviewに渡せない
    if @book.update(book_params)
      flash[:notice] = "successfully 2"
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    book=Book.find(params[:id])
    flash[:notice] = "successfully 3"
    book.destroy
    redirect_to books_path
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
