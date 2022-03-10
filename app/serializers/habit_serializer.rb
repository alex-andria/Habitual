class HabitSerializer < ActiveModel::Serializer
  attributes :id, :habit_name, :goal_description, :goal_days, :goal_tracker, :color_code
  has_one :user
end
