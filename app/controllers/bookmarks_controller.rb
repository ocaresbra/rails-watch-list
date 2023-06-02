class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = @list.bookmarks.build
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = @list.bookmarks.build(bookmarks_params)
    if @bookmark.save
      redirect_to @list, notice: "Bookmark was successfully added!"
    else
      render :new
    end
  end

  private

  def bookmarks_params
    params.require(:bookmark).permit(:movie_id)
  end
end
