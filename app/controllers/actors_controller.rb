class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors.as_json
  end

  def create
    actor = Actor.new(
      title: params[:title],
      year: params[:year],
      description: params[:description],
      creator: params[:creator],
      seasons: params[:seasons],
      network: params[:network],
      favorite: params[:favorite],
      user_id: params[:user_id],
    )
    actor.save
    render json: actor.as_json
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.title = params[:title] || actor.title
    actor.year = params[:year] || actor.year
    actor.description = params[:description] || actor.description
    actor.creator = params[:creator] || actor.creator
    actor.seasons = params[:seasons] || actor.seasons
    actor.network = params[:network] || actor.network
    actor.favorite = params[:favorite] || actor.favorite
    actor.user_id = params[:user_id] || actor.user_id
    actor.save
    render json: show.as_json
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Actor successfully destroyed." }
  end
end
