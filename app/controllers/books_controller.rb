class BooksController < ApplicationController
  def list
    @books = Book.all()
  end

  def show
    id = params[:id]
    @book = Book.find_by(id: id)
  end

  def new
    @book = Book.new()
  end

  def create
    book = Book.new(book_params())

    if book.save()
      redirect_to(books_path)
    else
      redirect_to(books_new_path)
    end
  end

  def edit
    id = params[:id]
    @book = Book.find_by(id: id)
  end

  def update
    id = params[:id]
    book = Book.find_by(id: id)

    if book.update(book_params())
      redirect_to(books_path)
    else
      redirect_to(books_edit_path)
    end
  end

  def destroy
    id = params[:id]
    Book.find_by(id: id).destroy()
    redirect_to(books_path)
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :count)
  end
end
