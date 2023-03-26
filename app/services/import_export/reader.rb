require 'roo'

class ImportExport::Reader
  def initialize(params)
    @file = params[:file]
  end

  def execute
    Roo::Excelx.new(@file.path)
  rescue EncodingError
    nil
  end
end
