class ReportsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @report = Report.new
    @reports = Report.all
    if params[:search].present?
      if params[:search][:title].present?
        @reports = Report.search_by_title_and_content(params[:search][:title])
      end
    else
      @reports = Report.all
    end
  end

  def create
    @report = Report.new(report_params)

    if @report.save
      redirect_to report_path(@report)
    else
      render new_report_path
    end
  end

  def show
    # @reports = Report.all
    # @report = Report.find(params[:id])
  end

  private

  def report_params
    params.require(:report).permit(:title, :content, :photo)
  end
end

