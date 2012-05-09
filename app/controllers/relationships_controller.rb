class RelationshipsController < ApplicationController
  before_filter do
    @person = Person.find(params[:person_id])
  end

  # GET /people/1/relationships
  # GET /people/1/relationships.json
  def index
    @relationships = @person.relationships

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @relationships }
    end
  end

  # GET /people/1/relationships/1
  # GET /people/1/relationships/1.json
  def show
    @relationship = Relationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @relationship }
    end
  end

  # GET /people/1/relationships/new
  # GET /people/1/relationships/new.json
  def new
    @relationship = @person.relationships.new

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @relationship }
    end
  end

  # GET /people/1/relationships/1/edit
  def edit
    @relationship = Relationship.find(params[:id])
  end

  # POST /people/1/relationships
  # POST /people/1/relationships.json
  def create
    @relationship = @person.relationships.new(params[:relationship])

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to person_relationship_path(@person, @relationship), notice: 'Relationship was successfully created.' }
        format.json { render json: @relationship, status: :created, location: @relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /people/1/relationships/1
  # PUT /people/1/relationships/1.json
  def update
    @relationship = Relationship.find(params[:id])

    respond_to do |format|
      if @relationship.update_attributes(params[:relationship])
        format.html { redirect_to person_relationship_path(@person, @relationship), notice: 'Relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1/relationships/1
  # DELETE /people/1/relationships/1.json
  def destroy
    @relationship = Relationship.find(params[:id])
    @relationship.destroy

    respond_to do |format|
      format.html { redirect_to person_relationships_path(@person) }
      format.json { head :no_content }
    end
  end
end
