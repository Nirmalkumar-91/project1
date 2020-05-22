class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end
    def new
        @book = Book.new
    end
    def create
        @book = Book.new(params.require(:book).permit(:title, :desc, :quantity))
        if @book.save
            flash[:notice] = "Book sucessfuly saved"
        redirect_to @book
        else
            render 'new'
        end
    end
end