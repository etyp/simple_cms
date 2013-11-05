class DemoController < ApplicationController
  
  def index
  end

  def hello
  	@array = [1, 2, 3, 4, 5]
  	@id = params[:id]
  	@page = params[:page]
  end

  def other_hello
  	render(:text => 'Hello everyone')
  end

end
