class PoemsController < ApplicationController
  def new
    @poem = Poem.new
  end
  
  def create
    @poem = Poem.create(poem_params)
    redirect_to root_path
  end
  
  private
  
  def poem_params
    params.require(:poem).permit(:title, :poem, :author)
  end
end
