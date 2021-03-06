class LinksController < ApplicationController
  # For autocomplete feature
  autocomplete :link, :streetaddress, :full => true
  autocomplete :link, :regionaladdress, :full => true

  # adding before_filter to control who can do things like edit or delete
  #before_filter :authenticate_user!, :only => [:index, :show, :advanced_search]

  before_action :authorized_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_link, only: [:show, :edit, :update, :destroy]



  def index
    @q = Link.ransack(@temp)
    @links = @q.result(distinct: true)

    @topfive = Link.order('averageprice').limit(5)
    # Responses with list of apartment when queries with json for autocomplete.
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @links.to_json }
    end
  end

  def rate
        @link = Link.find(params[:id])

  end


  def result_page
    @q = Link.ransack(params[:q])
    @links = @q.result(distinct: true)


  end

  def advanced_search
    @q = Link.ransack(params[:q])
    @links = @q.result(distinct: true)
    #@q.build_condition
    #@q.build_sort
  end

  # GET /links/1
  # GET /links/1.json
  def show
  end

  # GET /links/new
  def new
    @link = current_user.links.build # using devise helper "current_user"
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = current_user.links.build(link_params) # using devise helper "current_user"
    logger.debug " DEBUG :::::::: #{link_params.to_json}"
    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @link = Link.find(params[:id])
    @link.upvote_by current_user
    redirect_to :back
  end

  def downvote
    @link = Link.find(params[:id])
    @link.downvote_by current_user
    redirect_to :back
  end

  private

    # to stop user from editing url that doesn't belong to them
    def authorized_user
      if current_user.is_admin?
      else
        @link = current_user.links.find_by(id: params[:id])
        redirect_to links_path, notice: "Not authorized to edit this link" if @link.nil?
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:name, :streetaddress, :regionaladdress, :averageprice, :built, :floors, :suites, :bedroom => [], :amenities => [])
    end

end
