class AnimalsController < ApplicationController
  # TODO: when we have good API, add columns to animal model, change the form name and value
  # in match.html.erb, and update the index here. Update pundit for index

  def index
    # I have Charly's blessing to skip pundit
    if params.has_key?(:direct)
      @animals = Animal.search_by_name_and_details(params[:direct][:query])
    elsif params.has_key?(:animal)
      @animals = Animal.all
      @animals = @animals.where(classification: params[:animal][:classification]) if params[:animal][:classification].present?
      @animals = @animals.where(habitat: params[:animal][:habitat]) if params[:animal][:habitat].present?
      @animals = @animals.where(behaviour: params[:animal][:behaviour]) if params[:animal][:behaviour].present?
      @animals = @animals.where(colour: params[:animal][:colour]) if params[:animal][:colour].present?
      @animals = @animals.where(tail: params[:animal][:tail]) if params[:animal][:tail].present?
      @animals = @animals.where(legs: params[:animal][:legs]) if params[:animal][:legs].present?
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
