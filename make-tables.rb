create_table :CSV_input do |t|
  t.text :name,
  t.text :device_type,
  t.text :instrument_type,
  t.text :wattage,
  t.text :purpose,
  t.text :position,
  t.text :unit_number,
  t.text :color,
  t.text :dimmer,
  t.text :channel,
  t.text :address,
  t.text :universe,
  t.text :u_address,
  t.text :circuit_number,
  t.text :circuit_name,
  t.text :system,
  t.text :user_field_1,
  t.text :user_field_2,
  t.text :user_field_3,
  t.text :user_field_4,
  t.text :user_field_5,
  t.text :user_field_6,
  t.text :num_channels,
  t.text :frame_size,
  t.text :field_angle,
  t.text :field_angle 2,
  t.text :beam_angle,
  t.text :beam_angle 2,
  t.text :weight,
  t.text :gobo_1,
  t.text :gobo_1_rotation,
  t.text :gobo_2,
  t.text :gobo_2_rotation,
  t.text :gobo_shift,
  t.text :mark,
  t.text :draw_beam,
  t.text :draw_beam_as_3d_solid,
  t.text :use_vertical_beam,
  t.text :show_beam_at,
  t.text :falloff_distance,
  t.text :lamp_rotation angle,
  t.text :top_shutter_depth,
  t.text :top_shutter_angle,
  t.text :left_shutter_depth,
  t.text :left_shutter_angle,
  t.text :right_shutter_depth,
  t.text :right_shutter_angle,
  t.text :bottom_shutter_depth,
  t.text :bottom_shutter_angle,
  t.text :symbol_name,
  t.text :use_legend,
  t.text :flip_front_and_back_legend_text,
  t.text :flip_left_and_right_legend_text,
  t.text :focus,
  t.text :set_3d_orientation,
  t.text :x_rotation,
  t.text :y_rotation,
  t.text :x_location,
  t.text :y_location,
  t.text :z_location,
  t.text :fixtureid,
  t.text :__uid,
  t.text :accessories,
  t.timestamps, null: false
end

create_table :equipment do |t|
  t.text :instrument_type,
  t.integer :wattage,
  t.text :purpose,
  t.text :position,
  t.text :unit_number,
  t.text :color,
  t.integer :dimmer,
  t.integer :channel,
  t.integer :address,
  t.text :universe,
  t.integer :circuit_number,
  t.text :circuit_name,
  t.float :frame_size,
  t.text :gobo_1,
  t.text :gobo_2,
  t.text :focus,
  t.text :accessories,
  t.integer :production_id, null: false,
  t.timestamps, null: false
end

create_table :equipment_notes do |t|
  t.text :note, null: false
  t.integer :equipment_id, null: false,
  t.string :field_type, null: false,
  t.timestamps, null: false
end

create_table :users do |t|
  t.string :name, null: false
  t.string :password,  null: false,#CHANGE FOR AUTH REQUIREMENTS
  t.integer :user_type, null: false,
  t.timestamps, null: false
end

create_table :leads do |t|
  t.integer :production_id, null: false,
  t.integer :user_id, null: false,
  t.timestamps, null: false
end

create_table :productions do |t|
  t.string :name, null: false,
  t.date :date,
  t.integer :designer_id,
  t.integer :master_electrician_id,
  t.timestamps, null: false
end

create_table :productions_venues do |t|
  t.integer :venue_id, null: false,
  t.integer :production_id, null: false,
  t.timestamps, null: false
end

create_table :venues do |t|
  t.string :name, null: false,
  t.text :address,
  t.timestamps, null: false
end

create_table :equipment_venues do |t|
  t.integer :equipment_id, null: false,
  t.integer :venue_id, null: false,
  t.timestamps, null: false
end
