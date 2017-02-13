class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all.order("created_at desc").paginate(page: params[:page], per_page: 3)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
    if @project.save
      redirect_to @project, notice: "Nickel, le projet a été ajouté !"
    else
      render 'new', notice: "Ah mince, le projet n'a pas été enregistré !"
    end
  end

  def show
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :link, :slug)
  end

  def find_project
    @project = Project.friendly.find(params[:id])
  end
end
