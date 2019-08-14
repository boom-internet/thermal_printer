module ThermalPrinter
  class Formatter
    attr_reader :content, :type, :align, :bold, :xformat, :width, :height

    def self.format(content, options = {})
      new(content, options).format
    end

    def initialize(content, options = {})
      @content = content
      @type = options[:type]
      @align = options[:align]
      @bold = options[:bold]
      @xformat = options[:format]
      @width = options[:width]
      @height = options[:height]

      set_default_options
    end

    def format
      format_line
    end

    private

    def set_default_options
      @type ||= Type::TEXT
      @align ||= Align::LEFT
      @bold ||= Bool::NO
      @xformat ||= Format::NORMAL
    end

    def format_line
      {
        type: type,
        content: content,
        bold: bold,
        align: align,
        format: xformat
      }
    end
end
end
