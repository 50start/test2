class TestsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :find_test, only: [:show, :edit, :update, :destroy]
  
  def index
  @tests = Test.all
  end
  
  def show
    
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
  
  def update
  if @test.update(test_params)
    redirect_to root_path(@test), notice: '更新できました'
  else
    render :edit,　alert: '更新できませんでした'
  end
  end
  
  def destroy
    if @test.destory
      redirect_to root_path, notice: '削除に成功しました'
    else
      redirect_to root_path, alert: '削除できませんでした'
    end
  end


  
  private
  def find_test
    @test = Test.find(params[:id])
  end
  
  def test_params
     params.require(:test).permit(:title, :body, :image)
  end  

  def update_params
     params.require(:test).permit(:title, :body, :image)
  end
end