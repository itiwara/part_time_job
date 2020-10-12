class SessionsController < ApplicationController
  
  def new
  end

  def create
    employee = Employee.find_by(number: params[:session][:number])
    log_in employee
    redirect_to root_path
    # binding.pry
    # if employee && employee.authenticate(params[:session][:number])
    #   log_in employee
    # else
    #   render "new"
    # end
  end

  def destroy
    log_out
    redirect_to root_path
  end

end