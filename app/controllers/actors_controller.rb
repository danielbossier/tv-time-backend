class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors.
  end

  def create
    actor = Actor.new(
      name: params[:name],
      age: params[:age],
      gender: params[:gender],
      hometown: params[:hometown],
    )
    actor.save
    render json: actor.
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.name = params[:name] || actor.name
    actor.age = params[:age] || actor.age
    actor.gender = params[:gender] || actor.gender
    actor.hometown = params[:hometown] || actor.hometown
    actor.save
    render json: actor.
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Actor successfully destroyed." }
  end
end
