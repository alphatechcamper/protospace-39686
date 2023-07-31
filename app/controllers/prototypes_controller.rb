class PrototypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_prototype, only: [:edit, :show]


  def index
    # @prototypes = Prototype.all
  end
  

end
