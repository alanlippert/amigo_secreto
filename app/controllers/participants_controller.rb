# frozen_string_literal: true

class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[show edit update destroy]

  def index
    @participants = Participant.all
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_params)

    if @participant.save
      redirect_to participants_path, notice: 'Participante adicionado com sucesso!'
    else
      render :new
    end
  end

  def edit; end

  def show; end

  def destroy
    @participant.destroy
    respond_to do |format|
      format.html { redirect_to participants_url, notice: "Coin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_participant
    @participant = Participant.find(params[:id])
  end

  def participant_params
    params.require(:participant).permit(:name, :email)
  end
end
