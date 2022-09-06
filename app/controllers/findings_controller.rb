class FindingsController < ApplicationController
  def index
    @my_findings = Finding.where(user: current_user)
  end
end
