class WorldsController < ApplicationController

# GET /world
def index
  @world = World.all
  render json: @world
end

# GET /world/1
def show
  @world = World.find(params[:id])
  render json: @world
end

# POST /worlds
def create
  @world = World.new(world_params)

  if @world.save
    render json: @world, status: :created, location: @world
  else
    render json: @world.errors, status: :unprocessable_entity
  end
end

# PATCH/PUT /worlds/1
def update
  if @world.update(world_params)
    render json: @world
  else
    render json: @world.errors, status: :unprocessable_entity
  end
end

# DELETE /worlds/1
def destroy
  @world = World.find(params[:world_id])
  @world.destroy
end

private
  
  

  # Only allow a trusted parameter "white list" through.
  def world_params
    params.require(:world).permit(:name, :constellation, :galaxy, :viewed)
  end

end
