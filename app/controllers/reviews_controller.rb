#class ReviewsController < ApplicationController

#def index

#  if params[:user_id]
 #@reviews = User.find(params[:user_id]).reviews
#  @user = User.find(params[:user_id])
#  else
#      redirect_to user_review_path
#     end
#  end

# def new
#  if params[:user_id] && !User.exists?(params[:user_id])
#    flash[:notice] = 'User not found.'
#    redirect_to new_user_registration_path
#  else
#      @review = Review.new(user_id: params[:user_id])
#  end
#   end

#  def create
#  @review = Review.new(review_params)
#  if @review.save
#    @user = current_user
#    redirect_to user_review_path(@user, @review)
#  else
#    render :new
#  end
#   end

#  def show
#  @review = Review.find_by(id: params[:id])
#  @user = current_user
#  end

#  def edit

#   end

#  def update

#   end

#   def destroy
#    Review.find_by(id: params[:id]).destroy
#    redirect_to root_path
#    end

#  private

#   def review_params
#  params.require(:review).permit(:content, :user_id, :hair_stylist_id)
#  end

#def current_review
 #@review ||= Review.find(params[:id])
#end


  #end
