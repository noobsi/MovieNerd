class Order < ApplicationRecord
  belongs_to :user
  belongs_to :screening
  has_many :movie_tickets
  has_many :seats, through: :movie_tickets

  def show_seats
    str = []
    seats.each do |seat|
      str.push(" #{I18n.t('seats.row')}#{seat.row}x"\
        "#{I18n.t('seats.number')}#{seat.number} ")
      str.push("||")
    end
    str.pop
    str
  end
end
