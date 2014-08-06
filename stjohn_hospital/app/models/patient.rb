class Patient < ActiveRecord::Base



validates :dob,
          date: { after: Proc.new { Time.now },
                  before: Proc.new { Time.now + 1.year } }

              end