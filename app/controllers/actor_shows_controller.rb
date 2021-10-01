class ActorShowsController < ApplicationController
  def index
    actor_shows = ActorShow.all
    render json: actor_shows
  end

  def show
    actor_shows = ActorShow.find_by(id: params[:id])
    render json: actor_shows
  end

  def create
    actor_shows = ActorShow.new(
      actor_id: params[:actor_id],
      show_id: params[:show_id],
    )
    if actor_shows.save
      render json: { message: "ActorShows created successfully." }, status: :created
    else
      render json: { errors: actor_shows.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    actor_shows = ActorShow.find_by(id: params[:id])
    actor_shows.actor_id = params[:actor_id] || actor_shows.actor_id
    actor_shows.show_id = params[:show_id] || actor_shows.show_id
    if actor_shows.save
      render json: { message: "ActorShows updated successfully." }
    else
      render json: { errors: actor_shows.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    actor_shows = ActorShow.find_by(id: params[:id])
    actor_shows.destroy
    render json: { message: "ActorShows successfully destroyed." }
  end
end
