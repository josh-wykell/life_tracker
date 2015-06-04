class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
    @schools = @person.schools.order(start_year: :desc)
    @life_events = @person.life_events.order(date: :desc)
  end

  def create
    @person = Person.create(person_params)
    
    # respond_to do |format|
    #   if @person.save
    #     redirect_to @person, notice: 'New Person Created'
    #   else
    #     render :new
    #   end
    # end
  end

  def destroy
    @person.destroy
    redirect_to @person, notice: 'Person Deleted'
  end

  def new
    @person = Person.new
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:name)
    end

end
