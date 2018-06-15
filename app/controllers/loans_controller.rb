class LoansController < ApplicationController
  before_action :set_book
  before_action :set_loan, only: [:show, :edit, :update, :destroy]


  def show
  end

  def new
    @loan = @book.loans.new
  end

  def edit
  end

  def create
    @loan = @book.loans.new(loan_params)
    if @loan.save
      redirect_to @book, notice: 'Loan was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to @loan, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.friendly.find(params[:book_id])
  end

  def set_loan
    @loan = @book.loans.find(params[:id])
  end

  def loan_params
    params.require(:loan).permit(:user_id, :book_id, :checkouted_at, :returned_at, :due_date)
  end
end
