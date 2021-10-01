class ShowGenresController < ApplicationController
  def index
    show_genres = ShowGenre.all
    render json: show_genres
  end

  def show
    show_genres = ShowGenre.find_by(id: params[:id])
    render json: show_genres
  end

  def create
    show_genres = ShowGenre.new(
      show_id: params[:show_id],
      genre_id: params[:genre_id],
    )
    if show_genres.save
      render json: { message: "ShowGenres created successfully." }, status: :created
    else
      render json: { errors: show_genres.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    show_genres = ShowGenre.find_by(id: params[:id])
    show_genres.show_id = params[:show_id] || show_genres.show_id
    show_genres.genre_id = params[:genre_id] || show_genres.genre_id
    if show_genres.save
      render json: { message: "ShowGenres updated successfully." }
    else
      render json: { errors: show_genres.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    show_genres = ShowGenre.find_by(id: params[:id])
    show_genres.destroy
    render json: { message: "ShowGenres successfully destroyed." }
  end
end
