class FindingsController < ApplicationController
  def index
    # if findings is empty, show something else
    @my_findings = policy_scope(Finding)
    @findings = Finding.all
    @markers = @my_findings.geocoded.map do |finding|
      {
        lat: finding.latitude,
        lng: finding.longitude,
        info_window: render_to_string(partial: "popup", locals: { finding: finding }),
        image_url: helpers.asset_url("Pocket-Zoo-1.png")
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
    flash[:notice] = "You received a new badge! Check out your achievements!" if config.add_observer 'ReputationChangeObserver'
  end

  def edit
    @finding = Finding.find(params[:id])
    authorize @finding
  end

  def update
    @finding = Finding.find(params[:id])
    @finding.update(finding_params)
    if @finding.save
      redirect_to finding_path(@finding)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @finding
  end

  def destroy
    @finding = Finding.find(params[:id])
    authorize @finding
    @finding.destroy
    redirect_to findings_path, status: :see_other
  end

  private

  def finding_params
    params.require(:finding).permit(:date, :photo, :comment, :address)
  end
end
