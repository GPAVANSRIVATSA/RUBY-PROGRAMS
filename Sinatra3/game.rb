class Game < ActiveRecord::Base
    belongs_to :list # belongs_to :list_item[ListItem model]
    belongs_to :user
end

