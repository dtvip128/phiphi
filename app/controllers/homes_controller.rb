class HomesController < ApplicationController
  def index; end

  def report
    @row = {
      email: 'dat.tlt.1208@gmail.com',
      full_name: 'Tran Le Thanh Dat',
      salary_by_working_day: '500000',
      overtime_salary: '5000',
      total_salary: '2300000',
      lunch_money: '400',
      gas_money: '100',
      other: '99',
      total_taxable_income: '45030',
      own: '1000',
      number_of_dependents: '3',
      total_deductible_income_for_dependants: '10000',
      total_deductions: '123456',
      taxable_income: '45631',
      tax_rate: '12',
      personal_income_tax: '999999',
      total_income_received: '100000000'
    }
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

    @email = 'dat.tlt.1208@gmail.com'
  end
end
