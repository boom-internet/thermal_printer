module ThermalPrinter
  class LabelObject
    include ThermalPrinter::Bool
    include ThermalPrinter::Align
    include ThermalPrinter::Type
    include ThermalPrinter::Format

    def generate
      ResponseGenerator.generate(self)
    end

    # In the format of array.
    def label_formats
      raise NotImplementedError
    end
  end
end
