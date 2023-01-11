class BootcampsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_bootcamp, only: %i[show edit update destroy]

  def index
    @bootcamp = Bootcamp.all
  end

  def show
  end

  def new
    @bootcamp = Bootcamp.new
  end

  def create
    @bootcamp = Bootcamp.new(bootcamp_params)
    @bootcamp.user = current_user
    # authorize @bootcamp
    if @bootcamp.save
      redirect_to bootcamp_path(@bootcamp)
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
  end

  def update
    @bootcamp.update(bootcamp_params)
    redirect_to bootcamp_path(@bootcamp)
  end

  def destroy
    # authorize @session
    @bootcamp = Bootcamp.find(params[:id])
    @bootcamp.destroy
    redirect_to bootcamps_path, status: :see_other
  end

  private

  def set_bootcamp
    @bootcamp = Bootcamp.find(params[:id])
  end

  def bootcamp_params
    params.require(:bootcamp).permit(
      :title,
      :date,
      :start_at,
      :end_at,
      :description,
      :coach,
      :address,
      :title_address,
      :price,
      :max_participation
    )
  end
end
