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
    
end   