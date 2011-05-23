class RobotsController < ActionController::Base
  def index
    respond_to do |format|
      format.text do
        render :text => generate_robots, :layout => false
      end
    end
  end
end
