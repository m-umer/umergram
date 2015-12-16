class UserAttachmentsController < ApplicationController
  before_action :set_user_attachment, only: [:show, :edit, :update, :destroy]

  # GET /user_attachments
  # GET /user_attachments.json
  def index
    @user_attachments = UserAttachment.all
  end

  # GET /user_attachments/1
  # GET /user_attachments/1.json
  def show
  end

  # GET /user_attachments/new
  def new
    @user_attachment = UserAttachment.new
  end

  # GET /user_attachments/1/edit
  def edit
  end

  # POST /user_attachments
  # POST /user_attachments.json
  def create
    @user_attachment = UserAttachment.new(user_attachment_params)

    respond_to do |format|
      if @user_attachment.save
        format.html { redirect_to @user_attachment, notice: 'User attachment was successfully created.' }
        format.json { render :show, status: :created, location: @user_attachment }
      else
        format.html { render :new }
        format.json { render json: @user_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_attachments/1
  # PATCH/PUT /user_attachments/1.json
  def update
    respond_to do |format|
      if @user_attachment.update(user_attachment_params)
        format.html { redirect_to @user_attachment, notice: 'User attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_attachment }
      else
        format.html { render :edit }
        format.json { render json: @user_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_attachments/1
  # DELETE /user_attachments/1.json
  def destroy
    @user_attachment.destroy
    respond_to do |format|
      format.html { redirect_to user_attachments_url, notice: 'User attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_attachment
      @user_attachment = UserAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_attachment_params
      params.require(:user_attachment).permit(:user_id, :image)
    end
end
