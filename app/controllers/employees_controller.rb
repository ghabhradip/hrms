class EmployeesController < ApplicationController
  require 'spreadsheet'
  skip_before_action :verify_authenticity_token, raise: false
  def index
  end

  def new
  end

  def create
    @file_data = params[:filepond]
    @workbook = Spreadsheet.open(@file_data)
    @worksheet = @workbook.worksheet(0)
    0.upto @worksheet.last_row_index do |index|
      @row = @worksheet.row(index)
      puts @row
      puts "**************"
      # @contact = Contact.new
      # @contact.first_name = row[0]
      # @contact.last_name = row[1]
      # @contact.save
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
