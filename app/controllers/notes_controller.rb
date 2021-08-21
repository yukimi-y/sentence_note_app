class NotesController < ApplicationController
  before_action :set_note, only: %i[show edit update destroy]

  def index
    @notes = Note.includes(:notes, :users).order(id: :asc)
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    note = Note.create!(note_params)
    if @note.save
      redirect_to note_path
    else
      redirect_to new_note_path
    end
  end

  def edit
  end

  def update
    @note.update!(note_params)
    redirect_to @note
  end

  def destroy
    @note.destroy!
    redirect_to @note
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :image).merge(user: current_user)
  end
end
