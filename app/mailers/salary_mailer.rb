class SalaryMailer < ApplicationMailer
  KEY_HEADERS = %i[
    full_name main_salary working_day salary_by_working_day overtime_salary bonus_month other
    total_taxable_income own number_of_dependents total_deductible_income_for_dependants
    social_insurance_deduction_amount total_deductions taxable_income tax_rate personal_income_tax
    paid_bonuses total_income_received month email
  ].freeze

  def report(row, vn_headers)
    @vn_headers = vn_headers
    row.delete_at(0)
    @hash_data = Hash[[KEY_HEADERS, row].transpose]
    return if @hash_data[:email].blank?

    mail(to: @hash_data[:email], subject: "Bang Luong #{@hash_data[:month]}")
  end
end
