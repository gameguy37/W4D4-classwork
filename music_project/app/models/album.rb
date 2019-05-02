# == Schema Information
#
# Table name: albums
#
#  id         :bigint           not null, primary key
#  band_id    :integer          not null
#  title      :string           not null
#  yr         :integer          not null
#  live_album :boolean          default(FALSE)
#

class Album < ApplicationRecord

    validates :title, :yr, presence: true

    belongs_to :band,
        primary_key: :id,
        foreign_key: :band_id,
        class_name: 'Band'
        
end
