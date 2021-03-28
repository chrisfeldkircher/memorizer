class ImagesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_image, only: [:edit, :update, :show, :destroy]

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    #render plain: params[:article].inspect
    @image = Image.new(image_params)
    if @image.save
      flash[:notice] = "Das Bild wurde erflogreich gespeichert"
      redirect_to image_path(@image)
    else
      render 'new'
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit
  end

  def update
    if @image.update(image_params)
      flash[:notice] = "Das Bild wurde erflogreich bearbeitet"
      redirect_to image_path(@image)
    else
      render 'edit'
    end
  end

  def destroy
    @image.destroy
    flash[:notice] = "Das Bild wurde erfolgreich entfernt"
    redirect_to image_path
  end

  private
  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:title, :description, :image)
  end

end
