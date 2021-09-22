class ShowsController < ApplicationController
  def index
    shows = Show.all
    render json: shows.as_json
  end

  def create
    show = Show.new(
      title: params[:title],
      year: params[:year],
      description: params[:description],
      creator: params[:creator],
      seasons: params[:seasons],
      network: params[:network],
      favorite: params[:favorite],
      user_id: params[:user_id],
    )
    show.save
    render json: show.as_json
  end

  def show
    show = Show.find_by(id: params[:id])
    render json: show.as_json
  end

  def update
    show = Show.find_by(id: params[:id])
    show.title = params[:title] || show.title
    show.year = params[:year] || show.year
    show.description = params[:description] || show.description
    show.creator = params[:creator] || show.creator
    show.seasons = params[:seasons] || show.seasons
    show.network = params[:network] || show.network
    show.favorite = params[:favorite] || show.favorite
    show.user_id = params[:user_id] || show.user_id
    show.image = params[:image] || show.image
    show.save
    render json: show.as_json
  end

  def destroy
    show = Show.find_by(id: params[:id])
    show.destroy
    render json: { message: "Show successfully destroyed." }
  end
end
