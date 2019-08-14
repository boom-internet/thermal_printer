module ThermalPrinter
  class ResponseGenerator
    include Helpers

    PAPER_LENGTH = 20

    # NOTE: A type of LabelObject
    attr_reader :label_object

    def self.generate(label_object)
      new(label_object).generate
    end

    def initialize(label_object)
      @label_object = label_object
    end

    def generate
      generate_lines
    end

    private

    def generate_lines
      hash = {}
      index = 0
      label_object.label_formats.each do |label_format|
        wrap_text(
          label_object.send(label_format[:content_method]),
          max_line: label_format[:max_line] || 1
        ).each do |content|
          hash[index] = Formatter.format(
            content,
            label_format[:options] || {}
          )
          index += 1
        end
      end
      hash
    end

    def wrap_text(text, max_length: PAPER_LENGTH, max_line: 1)
      words = breaking_word_wrap(text || '', line_width: max_length)
      words.select! { |word| word && word != '' }
      if words.size > max_line
        words = words.take(max_line)
        words.push(truncate(words.pop, length: max_length))
      else
        words.take(max_line)
      end
    end
  end
end
