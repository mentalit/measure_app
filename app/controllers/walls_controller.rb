class WallsController < ApplicationController
  before_action :set_wall, only: %i[ show update destroy ]
  before_action :get_room, only: %i[ create index]

  # GET /walls
  def index
    @walls = @room.walls

    render json: @walls
  end

  # GET /walls/1
  def show
    render json: @wall
  end

  # POST /walls
  def create
    @wall = @room.walls.build(wall_params)

    if @wall.save
      render json: @wall, status: :created, location: @wall
    else
      render json: @wall.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /walls/1
  def update
    if @wall.update(wall_params)
      render json: @wall
    else
      render json: @wall.errors, status: :unprocessable_content
    end
  end

  # DELETE /walls/1
  def destroy
    @wall.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wall
      @wall = Wall.find(params.expect(:id))
    end

    def get_room
      @room = Room.find(params[:room_id])
    end

    # Only allow a list of trusted parameters through.
    def wall_params
      params.expect(wall: [ :height, :length, :room_id ])
    end
end
