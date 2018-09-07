class NotesController < ApplicationController

  def index
    @world = World.find(params[:world_id])
    render json: @world.notes
  end


  def create
    @world = World.find(params[:world_id])
    @note = @world.notes.create(note_params)

    if @note.save
      render json: @note, status: :created
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  def show
    @world = World.find(params[:world_id])
    @note = @world.notes   
    render json: @world.notes
  end
 
  def destroy
    @world = World.find(params[:world_id])
    @note = @world.notes.find(note_params[:id])
    @note.destroy  
  end
 
  private
    def note_params
      params.require(:note).permit(:body)
    end

end
