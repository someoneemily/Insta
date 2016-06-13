class InstagrampicsController < ApplicationController
  before_action :set_instagrampic, only: [:show, :edit, :update, :destroy]

  # GET /instagrampics
  # GET /instagrampics.json
  def index
    @instagrampics = Instagrampic.all
    @instagrampic = Instagrampic.new
    @userprofile=Userprofile.new
    @userprofiles=Userprofile.all
  end
def addfollower
  @userprofiles.first.update_attribute(:followers, @userprofiles.first.followers.to_i+1)
end
helper_method :addfollower
  # GET /instagrampics/1
  # GET /instagrampics/1.json
  def show
  end

  # GET /instagrampics/new
  def new
    @instagrampic = Instagrampic.new
    @instagrampics = Instagrampic.all
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
