class ImportsController < ApplicationController
  def new
  end

  def create
    @vn_headers = {
      main_salary: 'Lương Chính',
      working_day: 'Ngày công',
      salary_by_working_day: 'Lương theo chấm công',
      overtime_salary: 'Làm thêm giờ',
      bonus_month: 'Thưởng theo tháng',
      other: 'Khác',
      total_taxable_income: 'Tổng thu nhập chịu thuế',
      own: 'Bản thân',
      number_of_dependents: 'Số người phụ thuộc',
      total_deductible_income_for_dependants: 'Số giảm trừ người phụ thuộc',
      social_insurance_deduction_amount: 'Giảm trừ BHXH',
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
