class SecuredPingController < ApplicationController
  before_action :authenticate

  def ping
  	render :json => { 
  		:message => "All good. You only get this message if you're authenticated.",
  		:user => @user
  	}
  end

end
