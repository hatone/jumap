class MapController < ApplicationController
def index
  end

  def create 
    
    return redirect_to plot_index_path 
  end

  def new

  end

  def edit

  end

  def show
  render :text => "show"
  end

  def update

  end

  def destroy
  end
end
