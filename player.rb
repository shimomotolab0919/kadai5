# coding: utf-8

class Player < Sprite
  def update
#    self.x += Input.x * 5
#    self.y += Input.y * 5
    self.x = Input.mouse_pos_x  # �}�E�X�J�[�\����x���W
    self.y = Input.mouse_pos_y  
end
end