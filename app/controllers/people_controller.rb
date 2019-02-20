class PeopleController < ApplicationController
  
  def index
    @people = Person.all
  end

  def show
    @people = Person.find(params[:id])
  end


  def edit
   @people = Person.find(params[:id])
  end

  def create
    @person = Person.new(people_params)
    if @person.save
      redirect_to person_path
    else
      render :new
    end

  end


  def destroy
   Person.find(params[:id]).destroy
   redirect_to person_path
  end

  # private 
  # def people_params
  #   params.require(:people).permit(:name, age:, :hair_color, :eye_color, :gender)
  # end
end
