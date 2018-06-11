class PoemsController < ApplicationController
  def index
    @poem = Poem.order("RANDOM()").first
  end
  
  def new
    @poem = Poem.new
  end
  
  def create
    @poem = Poem.create(poem_params)
    if @poem.valid?
      redirect_to poem_path(@poem)
    else
      redirect_to root_path
    end
  end
  
  def show
    @poem = Poem.find(params[:id])
  end
  
  private
  
  def poem_params
    params.require(:poem).permit(:title, :poem, :author)
  end
end
