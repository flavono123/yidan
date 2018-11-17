class ApplicationController < ActionController::API
  before_action :set_record, only: :show

  attr_reader :records, :record

  def index
    @records = model.all
    render json: records
  end

  def show
    render json: record
  end

  private

  def model
    raise NotImplementedError
  end

  def set_record
    @record = model.find(params[:id])
  end
end
