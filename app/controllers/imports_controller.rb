class ImportsController < ApplicationController
  def new
  end

  def create
    @vn_headers = {
      salary_by_working_day: 'Lương theo ngày công',
      overtime_salary: 'Lương làm thêm giờ',
      total_salary: 'Tổng tiền lương',
      lunch_money: 'Tiền ăn trưa',
      gas_money: 'Xăng xe',
      other: 'Khác',
      total_taxable_income: 'Tổng thu nhập chịu thuế',
      own: 'Bản thân',
      number_of_dependents: 'Số người phụ thuộc',
      total_deductible_income_for_dependants: 'Số giảm trừ người phụ thuộc',
      total_deductions: 'Tổng các khoản khấu trừ',
      taxable_income: 'Thu nhập tính thuế',
      tax_rate: 'Thuế suất',
      personal_income_tax: 'Thuế TNCN phải nộp',
      total_income_received: 'Lương thực lĩnh'
    }

    spreadsheet = ImportExport::Reader.new(params).execute
    (2..spreadsheet.last_row).each do |index|
      row = spreadsheet.row(index)
      SalaryMailer.report(row, @vn_headers).deliver
    end
  end
end
