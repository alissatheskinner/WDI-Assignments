class Job < ApplicationRecord
	has_many :boats, through: :boat_jobs
	has_many :boat_jobs

	validates :job_name, presence: true, uniqueness: true 
	validates :job_description, length: {in: 50..200}
end
