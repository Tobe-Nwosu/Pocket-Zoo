class AnimalsController < ApplicationController
  def index
    if params.has_key?(:animal)
      @animals = Animal.where(classification: params[:animal][:classification],
                              habitat: params[:animal][:habitat],
                              features: params[:animal][:features])
    else
      @animals = Animal.all
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def match
  end
end
