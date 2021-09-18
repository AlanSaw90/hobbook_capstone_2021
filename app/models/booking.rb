class Booking < ApplicationRecord

    belongs_to :user    

    enum status: [:pending, :paid, :cancelled]

    after_create :generate_ref_no

    def generate_ref_no
        #y7w40p
        random_string = SecureRandom.hex(3)
        self.ref_no = random_string
        self.save
      end
    
      def calculate_total
        total_days = days_between + 1
        self.total = booking.price_per_day * total_days
        self.save
      end
end   