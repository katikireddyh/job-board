class JobPosting < ApplicationRecord
  belongs_to :job_poster
  belongs_to :category
  belongs_to :location

  enum status: {
    new_post: 0,
    pending: 1,
    complete: 2
  }

  validates :title, presence: true

  after_initialize :set_defaults

  def self.import(user, file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      job_posting = JobPosting.new
      job_posting.attributes = row.to_hash.slice(*job_posting_params)
      job_posting.user = user
      job_posting.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  private

  def set_defaults
    self.posted_at ||= Time.zone.now
    self.status ||= statuses[:new_post]
  end
end
