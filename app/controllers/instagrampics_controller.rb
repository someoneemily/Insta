class InstagrampicsController < ApplicationController
  before_action :set_instagrampic, only: [:show, :edit, :update, :destroy]

  # GET /instagrampics
  # GET /instagrampics.json
  def index

    @instagrampics = Instagrampic.all
    @instagrampic = Instagrampic.new
    @userprofile=Userprofile.new
    @userprofiles=Userprofile.all
   
    @user=current_user
     @users=User.all
    @pictures=Picture.all

    
  end


 def updatelikes
  @picture = Picture.find(params[:picture])
  @picture.likes=@picture.likes.to_i+1
  @picture.save
  redirect_to "/instagrampics/index/##{@picture.id}"

end

def updatecomments
  @user=current_user
  @picture=Picture.find(params[:picture])
  @picture.comments=@picture.comments.to_s+"\n| "+@user.name.to_s+": "+params[:commentadd].to_s+"\n"+"1"
  @picture.save
  redirect_to "/instagrampics/index/##{@picture.id}"
end

def addfollower
  @userprofiles.first.update_attribute(:followers, @userprofiles.first.followers.to_i+1)
end

helper_method :addfollower, :updatelikes, :updatecomments



  # GET /instagrampics/1
  # GET /instagrampics/1.json
  def show
  end


  # GET /instagrampics/new
  def new
    @instagrampic = Instagrampic.new
    @instagrampics = Instagrampic.all
      @userprofile=Userprofile.new
    @userprofiles=Userprofile.all
   
    @users=User.all 
  end
  def newpage
    @instagrampic = Instagrampic.newpage
  end

  def followers
    @instagrampic = @instagrampics.first.followers
  end
  # GET /instagrampics/1/edit
  def edit
  end

  # POST /instagrampics
  # POST /instagrampics.json
  def create
    @instagrampic = Instagrampic.new(instagrampic_params)

    respond_to do |format|
      if @instagrampic.save
        format.html { redirect_to @instagrampic, notice: 'Instagrampic was successfully created.' }
        format.json { render :show, status: :created, location: @instagrampic }
      else
        format.html { render :new }
        format.json { render json: @instagrampic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instagrampics/1
  # PATCH/PUT /instagrampics/1.json
  def update
    respond_to do |format|
      if @instagrampic.update(instagrampic_params)
        format.html { redirect_to @instagrampic, notice: 'Instagrampic was successfully updated.' }
        format.json { render :show, status: :ok, location: @instagrampic }
      else
        format.html { render :edit }
        format.json { render json: @instagrampic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instagrampics/1
  # DELETE /instagrampics/1.json
  def destroy
    @instagrampic.destroy
    respond_to do |format|
      format.html { redirect_to instagrampics_url, notice: 'Instagrampic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    

    # Use callbacks to share common setup or constraints between actions.
    def set_instagrampic
      @instagrampic = Instagrampic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instagrampic_params
      params.require(:instagrampic).permit(:photo_url, :description)
    end
end
