class BookingsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        @booking = @post.bookings.create(user_id: current_user.id, post_id: @post, total: @post.price_per_day)

        if @booking.save
            redirect_to post_booking_path(@post, @booking), notice: 'Booking was successfully created.'
        else
            redirect_to post_path(@post), alert: 'There was an error. Please try again.'  
        end      
    end     

    def show
        @booking = Booking.find(params[:id])
    end    
end  