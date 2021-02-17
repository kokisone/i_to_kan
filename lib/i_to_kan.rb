# frozen_string_literal: true

require_relative "i_to_kan/version"

class Integer

  def to_kan
    return kansuji(self) if self == 0

    str = ''
    num = self < 0 ? -self : self
    {
      10 **  0 => '',
      10 **  4 => '万',
      10 **  8 => '億',
      10 ** 12 => '兆',
      10 ** 16 => '京',
      10 ** 20 => '垓',
      10 ** 24 => '𥝱',
      10 ** 28 => '穣',
      10 ** 32 => '溝',
      10 ** 36 => '澗',
      10 ** 40 => '正',
      10 ** 44 => '載',
      10 ** 48 => '極',
      10 ** 52 => '恒河沙',
      10 ** 56 => '阿僧祇',
      10 ** 60 => '那由他',
      10 ** 64 => '不可思議',
      10 ** 68 => '無量大数'
    }.each do |digit, ja|
      sliced = num / digit
      break if sliced == 0
      _4dig = sliced % 10_000
      str = to_sen_hyaku_jyu(_4dig) + ja + str if _4dig > 0
    end
    str = '-' + str if self < 0
    str
  end

  private

  def to_sen_hyaku_jyu(_4dig)
    str = ''
    {
      10 ** 0 => '',
      10 ** 1 => '十',
      10 ** 2 => '百',
      10 ** 3 => '千'
    }.each do |digit, ja|
      sliced = _4dig / digit
      break if sliced == 0
      num = sliced % 10
      next if num == 0
      tmp = kansuji(num) if num > 1 || digit == 1
      str = tmp.to_s + ja + str
    end
    str
  end

  def kansuji(i)
    %w(零 一 二 三 四 五 六 七 八 九)[i]
  end

end
