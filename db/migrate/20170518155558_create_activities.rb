class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
    	t.string	:name
    	t.string	:description
    	t.date		:show_time
    	t.float		:value
    	t.string	:place
      t.timestamps
    end
  end
end
