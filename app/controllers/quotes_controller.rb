class QuotesController < ApplicationController
  def root
  end
  def index
    @quote = Quote.paginate(page: params[:page])
  end
  def random
  end
  def new
    @quote = Quote.new
  end
  def create
    quote = Quote.new(safe_params)
    if quote.save
      flash[:success] = "Quote berhasil di post"
      redirect_to root_path
    else
      render 'new'
    end
  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end
  private
    def safe_params
      params.require(:quote).permit(:name, :quote)
    end
end
