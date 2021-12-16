class Launch < ActiveRecord::Base
    belongs_to :company

    def failures
        self[:failure_notes][0].each do |note|
            note
        end
    end
end