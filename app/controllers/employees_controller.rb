class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
      if @employee.save
        redirect_to root_path
      else
        redirect_to new_employee_path
      end
  end

  private
    def employee_params
      params.require(:employee).permit(:name, :number)
    end
end
