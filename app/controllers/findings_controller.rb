class FindingsController < ApplicationController
  def index
    # if findings is empty, show something else
    if params[:classification]
      if params[:classification] == 'all'
        current_user.admin? ? @my_findings = Finding.all : @my_findings = Finding.where(user: current_user).order(id: params[:date_order])
      else
        query = Finding.joins(:animal).where(user: current_user)
        @my_queried_findings = query.select do |finding|
          finding.animal.classification == params[:classification]
        end
        @my_findings = Finding.where(id: @my_queried_findings.map.pluck(:id)).order(id: params[:date_order])
      end
    else
      @my_findings = Finding.where(user: current_user).order(id: :desc)
    end
    if params[:name] && params[:name] != ''
      query = Finding.joins(:animal).where(user: current_user)
      @my_queried_finding = query.select do |finding|
        finding.animal.name == params[:name].capitalize
      end
      @my_findings = Finding.where(id: @my_queried_finding.map.pluck(:id)).order(id: params[:date_order])
    end
    @findings = Finding.all
    @markers = Finding.where(user: current_user).order(id: :desc).geocoded.map do |finding|
      {
        lat: finding.latitude,
        lng: finding.longitude,
        info_window: render_to_string(partial: "popup", locals: { finding: finding }),
        image_url: helpers.asset_url("pawprint.png")
      }
    end
    skip_policy_scope
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
      # Type in your custom notification for the pitch here
      if @finding.animal.classification == 'bird'
        flash[:notice] = "You received the badge 'Bird Baron'! Check out your achievements!"
      end
    else
      render :new, status: :unprocessable_entity
    end
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
