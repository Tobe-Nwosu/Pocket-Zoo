class FindingsController < ApplicationController
  def index
    # if findings is empty, show something else
    @my_findings = policy_scope(Finding)
    @findings = Finding.all
    @markers = @my_findings.geocoded.map do |finding|
      {
        lat: finding.latitude,
        lng: finding.longitude,
        info_window: render_to_string(partial: "popup", locals: { finding: finding })
      }
    end
  end

  def show
    @finding = Finding.find(params[:id])
    authorize @finding
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @finding = Finding.new
    authorize @finding
  end

  def create
    @finding = Finding.new(finding_params)
    authorize @finding
    @finding.user = current_user
    @animal = Animal.find(params[:animal_id])
    @finding.animal = @animal
    if @finding.save
      redirect_to finding_path(@finding)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @finding
  end

  def update
    authorize @finding
  end

  def destroy
    authorize @finding
  end

  private

  def finding_params
    params.require(:finding).permit(:date, :photo, :comment)
  end
end
