class ImportsController < ApplicationController
  def new
  end

  def create
    spreadsheet = ImportExport::Reader.new(params).execute
    (2..spreadsheet.last_row).each do |i|
      row = spreadsheet.row(i)
      SalaryMailer.report(row[1]).deliver
      break
    end
  end
end
