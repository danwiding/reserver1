class UserReservationMailer < ApplicationMailer
  def reservation_confirmation(reservation)
    @reservation = reservation
    @user = reservation.user
    mail(to: @user.email, subject: 'Your Reservation')
  end
end