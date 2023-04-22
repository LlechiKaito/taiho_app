class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :phone_number, presence: true, format: { with: /\A\d{10}(\d{1})?\z/, message: "（電話番号）は半角数字10桁または11桁で入力してください" }
end
