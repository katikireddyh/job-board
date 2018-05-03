class JobPoster < ApplicationRecord
  has_many :job_postings, dependent: :destroy

  def full_name
    [first_name, last_name].compact.join(" ")
  end
end
