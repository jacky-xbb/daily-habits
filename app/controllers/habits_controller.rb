class HabitsController < ApplicationController
  before_action :set_habit, only: %i[show plus minus]

  def show; end

  def plus
    @habit.update(count: @habit.count + 1)
    render :result
  end

  def minus
    @habit.update(count: @habit.count - 1)
    render :result
  end

  private

  def set_habit
    @habit = Habit.find(params[:id])
  end
end
