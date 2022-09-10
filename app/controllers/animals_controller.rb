class AnimalsController < ApplicationController
  # TODO: when we have good API, add columns to animal model, change the form name and value
  # in match.html.erb, and update the index here. Update pundit for index

  def index
    # I have Charly's blessing to skip pundit
    if params.has_key?(:direct)
      @animals = Animal.search_by_name_and_details(params[:direct][:query])
    elsif params.has_key?(:animal)
      @animals = Animal.where(classification: params[:animal][:classification],
                              habitat: params[:animal][:habitat],
                              behaviour: params[:animal][:behaviour],
                              colour: params[:animal][:colour],
                              tail: params[:animal][:tail],
                              legs: params[:animal][:legs])
    else
      @animals = Animal.all
    end
    skip_policy_scope
  end

  def show
    @animal = Animal.find(params[:id])
    authorize @animal
  end

  def match
    authorize Animal
  end
end
