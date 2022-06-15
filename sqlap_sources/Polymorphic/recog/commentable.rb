class Comment < ActiveRecord::Base
  self.primary_key = 'comment_id'
  belongs_to :issue, :polymorphic => true
end

class Bug < ActiveRecord::Base
  self.primary_key = 'issue_id'
  has_many :comments, :as => :issue
end

class FeatureRequest < ActiveRecord::Base
  self.table_name = 'featurerequests'
  self.primary_key = 'issue_id'
  has_many :comments, :as => :issue
end
