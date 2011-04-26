class Shout < ActiveRecord::Base

  def self.top5
    order("created_at desc").limit(5)
  end
  # Shout.top5

end
