require 'hirb'
require 'unicode/display_width'

module Hirb
  module Unicode
    module StringUtility
      def size(string)
        string.display_width
      end

      def slice(string, offset, width)
        chars = string.chars.to_a[offset..-1].to_a

        current_length = 0
        split_index = 0
        chars.each_with_index do |c, i|
          char_width = self.size(c)
          break if current_length + char_width > width
          split_index = i+1
          current_length += char_width
        end

        split_index ||= chars.count
        head = chars[0, split_index].join
        head
      end
    end
  end
end

Hirb::String.extend(Hirb::Unicode::StringUtility)
