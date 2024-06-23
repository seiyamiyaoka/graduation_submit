class BlogsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  # before_action :authorize_user!, only: [:edit, :update, :destroy]
  after_action :track_history, only: [:show]
  before_action :correct_user!, only: [:edit, :update, :destroy]

  # GET /blogs or /blogs.json
  def index
    if user_signed_in?
      @q = Blog.ransack(params[:q])
      @blogs = @q.result(distinct: true)
    else
      @user = User.new
    end
  end

  # GET /blogs/1 or /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)
    @blog.user = current_user

    respond_to do |format|
      if @blog.save
        format.html { redirect_to blog_url(@blog), notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "Blog was successfully updated."
    else
      render :edit, status: :unprocessable_entity  
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.find(params[:id])
  end

  def track_history
    return unless user_signed_in?
    current_user.histories.create(blog: @blog)
  end

  # Only allow a list of trusted parameters through.
  def blog_params
    params.require(:blog).permit(:title, :content, :image, :ingredients, :calories, :user_id)
  end

  # def authorize_user!
  #   unless current_user.admin?
  #     flash[:alert] = "管理者以外は編集や削除できません。"
  #     redirect_to root_path
  #   end
  # end

  def correct_user!
    unless @blog.user == current_user || current_user.admin?
      flash[:alert] = "自分の投稿しか編集・削除できません。"
      redirect_to root_path
    end
  end
end
