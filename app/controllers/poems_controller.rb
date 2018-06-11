class PoemsController < ApplicationController
  def index
    @poem = Poem.order("RANDOM()").first
  end
  
  def new
    @poem = Poem.new
  end
  
  def create
    @poem = Poem.create(poem_params)
    redirect_to poem_path(@poem)
  end
  
  def show
    @poem = Poem.find(params[:id])
  end
  
  private
  
  def poem_params
    params.require(:poem).permit(:title, :poem, :author)
  end
end
