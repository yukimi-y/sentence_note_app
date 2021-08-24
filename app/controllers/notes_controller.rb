class NotesController < ApplicationController
  before_action :set_note, only: %i[show edit update destroy]

  def index
    @notes = Note.order(id: :asc)
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save!
      redirect_to root_path
      flash[:notice] = "ノートを作成しました"
    else
      redirect_to new_note_path
      flash[:alert] = "ノート作成に失敗しました"
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
