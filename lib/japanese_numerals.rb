# frozen_string_literal: true

require_relative "japanese_numerals/version"

class Integer

  UNITS = %w[万 億 兆 京 垓 𥝱 穣 溝 澗 正 載 極 恒河沙 阿僧祇 那由多 不可思議 無量大数].freeze

  def to_japanese_unit_ary
    splitted = abs.to_s
              .reverse.each_char
              .each_slice(4)
              .map(&:reverse)
              .map(&:join)

    splitted.zip([nil, *UNITS])
              .reject { |n, _| n.to_i.zero? }
              .reverse
  end

  def to_japanese_unit
    if to_japanese_unit_ary.join.empty?
      return "0"
    end
    if negative?
      "-#{to_japanese_unit_ary.join}"
    else
      to_japanese_unit_ary.join
    end
  end

  alias :to_j_unit     :to_japanese_unit
  alias :to_j_unit_ary :to_japanese_unit_ary

end
