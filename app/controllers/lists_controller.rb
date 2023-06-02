class ListsController < ApplicationController

  def index
    @list = List.all
  end

  def new
    @list = List.new
  end

  def show
    @bookmark = Bookmark.new
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name, :address, :rating)
  end
end
