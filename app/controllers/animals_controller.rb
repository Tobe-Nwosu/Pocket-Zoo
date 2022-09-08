class AnimalsController < ApplicationController
  # TODO: when we have good API, add columns to animal model, change the form name and value
  # in match.html.erb, and update the index here.

  def index
    if params.has_key?(:animal)
      @animals = Animal.where(classification: params[:animal][:classification],
                              habitat: params[:animal][:habitat],
                              behaviour: params[:animal][:behaviour],
                              colour: params[:animal][:colour],
                              tail: params[:animal][:tail],
                              legs: params[:animal][:legs])
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
