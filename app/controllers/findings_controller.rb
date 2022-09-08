class FindingsController < ApplicationController
  def index
    @my_findings = Finding.where(user: current_user)
    @findings = Finding.all
    @markers = @findings.geocoded.map do |finding|
      {
        lat: finding.latitude,
        lng: finding.longitude,
        info_window: render_to_string(partial: "popup", locals: { finding: finding })
      }
    end
  end

  def show
    @finding = Finding.find(params[:id])
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @finding = Finding.new
  end

  def create
    @finding = Finding.new(finding_params)
    @finding.user = current_user
    @animal = Animal.find(params[:animal_id])
    @finding.animal = @animal
    if @finding.save
      redirect_to finding_path(@finding)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def finding_params
    params.require(:finding).permit(:date, :photo, :comment)
  end
end
