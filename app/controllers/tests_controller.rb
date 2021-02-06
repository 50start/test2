class TestsController < ApplicationController
  before_action :find_test, only: [:show, :edit, :update, :destroy]
  
  def index
  @tests = Test.all
  end

  def new
  @test = Test.new
  end

  def create
    @test = Test.new(test_params)
     if @test.save
      redirect_to root_path(@test)
    else
      render :new
     end
  end
  
  def edit
  end

  private
  def find_test
    @test = Test.find(params[:id])
  end
  
  def test_params
     params.require(:test).permit(:title, :body, :image)
  end  

end
