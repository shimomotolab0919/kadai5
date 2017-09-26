# coding: utf-8

class Enemy < Sprite
  def update
    self.x += 1 * 5
    if self.x >= Window.width - self.image.width
      self.x = rand(250)
      self.y = rand(720)
    end
  end

  # 他のオブジェクトから衝突された際に呼ばれるメソッド
  def hit(obj)
      self.x = rand(250)
      self.y = rand(720)
  end
end