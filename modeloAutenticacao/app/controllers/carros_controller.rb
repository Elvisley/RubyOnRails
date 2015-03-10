class CarrosController < ApplicationController
  before_action  :set_carro, only: [:show, :edit, :update, :destroy ] 
  before_action :authenticate_user!
  
  respond_to :html

  def index
      @user = current_user
      @carros = Carro.where( [ "user_id = ? " , @user.id ] )
      respond_with(@carros)
  end

  def show
    respond_with(@carro)
  end

  def new
    @carro = Carro.new
    respond_with(@carro)
  end

  def edit
  end

  def create
    @carro = Carro.new(carro_params)
    @carro.save

    @user = User.new(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
    @user.save

    respond_with(@carro)
  end

  def update
    @carro.update(carro_params)
    respond_with(@carro)
  end

  def destroy
    @carro.destroy
    respond_with(@carro)
  end

  private
    def set_carro
      @carro = Carro.find(params[:id])
    end

    def carro_params
      params.require(:carro).permit(:nome, :marca, :ano , :user_id)
    end
end
