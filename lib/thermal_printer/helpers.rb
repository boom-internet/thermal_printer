module ThermalPrinter
  module Helpers
    def breaking_word_wrap(text, options = {})
      length = text.length
      line_width = options.fetch(:line_width, 80)
      startPtr = 0
      endPtr = line_width - 1
      arr = []
      while startPtr < text.length do
        arr.push(text[startPtr..endPtr])
        startPtr += line_width
        endPtr += line_width
      end
      arr
    end

    def truncate(str, options = {})
      truncate_at = options.fetch(:length, 0)
      omission = options[:omission] || "..."
      length_with_room_for_omission = truncate_at - omission.length
      "#{str[0, length_with_room_for_omission]}#{omission}"
    end
  end
end

