class AssignmentReposController < ApplicationController
  before_action :set_assignment_repo, only: %i[ show edit update destroy ]

  # GET /assignment_repos or /assignment_repos.json
  def index
    @assignment_repos = AssignmentRepo.all
  end

  # GET /assignment_repos/1 or /assignment_repos/1.json
  def show
  end

  # GET /assignment_repos/new
  def new
    @assignment_repo = AssignmentRepo.new
  end

  # GET /assignment_repos/1/edit
  def edit
  end

  # POST /assignment_repos or /assignment_repos.json
  def create
    @assignment_repo = AssignmentRepo.new(assignment_repo_params)

    respond_to do |format|
      if @assignment_repo.save
        format.html { redirect_to @assignment_repo, notice: "Assignment repo was successfully created." }
        format.json { render :show, status: :created, location: @assignment_repo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assignment_repo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignment_repos/1 or /assignment_repos/1.json
  def update
    respond_to do |format|
      if @assignment_repo.update(assignment_repo_params)
        format.html { redirect_to @assignment_repo, notice: "Assignment repo was successfully updated." }
        format.json { render :show, status: :ok, location: @assignment_repo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assignment_repo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_repos/1 or /assignment_repos/1.json
  def destroy
    @assignment_repo.destroy

    respond_to do |format|
      format.html { redirect_to assignment_repos_path, status: :see_other, notice: "Assignment repo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_repo
      @assignment_repo = AssignmentRepo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assignment_repo_params
      params.require(:assignment_repo).permit(:student_id, :assignment_id, :repo_url)
    end
end
