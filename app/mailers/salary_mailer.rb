class SalaryMailer < ApplicationMailer
  KEY_HEADERS = %i[full_name salary_by_working_day overtime_salary total_salary lunch_money gas_money other
                   total_taxable_income own number_of_dependents total_deductible_income_for_dependants
                   total_deductions taxable_income tax_rate personal_income_tax total_income_received email
                  ].freeze

  def report(row, vn_headers)
    @vn_headers = vn_headers
    row.delete_at(0)
    @row = Hash[[KEY_HEADERS, row].transpose]
    @row[:email] = 'dat.tlt.1208@gmail.com'
    mail(to: @row[:email], subject: "Bang Luong #{Date.current.month}-#{Date.current.year}")
  end
end
