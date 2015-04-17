class WelcomeController < ApplicationController

	def index
    @hilite = "index"
		render
	  flash[:notice]
  end

	def join
    @hilite = "join"
		render
	end
    
    def landing
      @title = "Bike Share Landing"
      @hilite = "landing"
    end

	def resources
    @hilite = "resources"
	  @title = "Bike Share Resources"
    @localTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/bikemap_2011_fwv-small.pdf"
    @fitnessTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/fitnesstrailsmap1bu.pdf"
    @twoRiverTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/gbgmaps.pdf"
    @bikeCoalition = "http://nybc.net/"
    @bingTransport = "http://www.bmtsonline.com/"
    @bikeMaintanence = "http://vimeo.com/21928126"
    @bikeShop = "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CB8QFjAA&url=http%3A%2F%2Fwww.chenangopoint.com%2F&ei=LrVjVJ-0F7bGsQT2rYKYCA&usg=AFQjCNEYNSBt_S_urwnclJ9EAE030FACuQ&bvm=bv.79189006,d.cWc"
    @stonybrookBikeShare = "http://www.stonybrook.edu/sustainability/biking-at-stony-brook/wolf-ride-bike-share.shtml"
    @cornellBikeShare = "http://bigredbikes.cornell.edu/"
    @ithacaBikeShare = "http://www.ithaca.edu/orgs/bbikes/about/"
	end

	def contact_us
    @hilite = "contact_us"
		render
	end

  def bike_shop
    @hilite = "info"
    render
  end

  def how_it_works
    @hilite = "how_it_works"
    render
  end

<<<<<<< HEAD
  def valid_user(user)
    path = sign_in_page_path
    @user_list = User.all
    first_name = params[:user][:first_name]
    session[:user_name] = first_name
    params.permit!
    @user_list.each do |u|
      if first_name == u[:first_name]
        path = valid_user_page_path
        return
      else
        flash[:notice] = "Your username or password was incorrect. Try again."
        path = sign_in_page_path
      end
    end
    redirect_to path and return
  end

  def failure
    flash[:notice] = "Your username or password was incorrect. Try again."
#redirect_to sign_in_page_path
=======
  def sign_in
    #@user = User.find params[:id]
    render
>>>>>>> 615e2779df0e990f73e21354f679d6d7038e96d9
  end
end





