class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_session, only: [:show, :edit, :destroy]

  def index
    @session = Session.all
  end

  def show
  end

  def new
    @session = Session.new
    authorize @session
  end

  def create
    @session = Session.new(session_params)
    @session.user = current_user
    # authorize @session
    if @session.save
      redirect_to session_path(@session)
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
  end

  def update
    @session.update(session_params)
    redirect_to session_path(@session)
  end

  def destroy
    # authorize @session
    @session.destroy
    redirect_to session_path, status: :see_other
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(
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
