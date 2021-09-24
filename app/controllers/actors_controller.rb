class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors
  end

  def create
    actor = Actor.new(
      name: params[:name],
      age: params[:age],
      gender: params[:gender],
      hometown: params[:hometown],
    )
    if actor.save
      render json: { message: "Actor created successfully" }, status: :created
    else
      render json: { errors: actor.errors.full_messages }, status: :bad_request
    end
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.name = params[:name] || actor.name
    actor.age = params[:age] || actor.age
    actor.gender = params[:gender] || actor.gender
    actor.hometown = params[:hometown] || actor.hometown
    
    if actor.save
      render json: { message: "Actor updated successfully" }
    else
      render json: { errors: actor.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Actor successfully destroyed." }
  end
end
