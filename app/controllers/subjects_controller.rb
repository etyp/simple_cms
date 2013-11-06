class SubjectsController < ApplicationController
  def index
  	list
  	render('list')
  end

  def list
  	@subjects = Subject.order("subjects.position ASC")
  end

  def show
  	@subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new(:name => 'default')
  end

  def create
    #instantiate a new object using form params
    @subject = Subject.new(params[:subject])
    #save object
    if @subject.save
      redirect_to(:action => 'list')
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    #find object using form params
    @subject = Subject.find(params[:id])
    #save object
    if @subject.update_attributes(params[:subject])
      redirect_to(:action => 'list')
    else
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    Subject.find(params[:id]).destroy
    redirect_to(:action => 'list')
  end

end
