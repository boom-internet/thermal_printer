class SimpleLabelObject < ThermalPrinter::LabelObject
  def label_formats
    [
      {
        content_method: 'line1',
        max_line: 2,
        options: {
          bold: YES,
          format: NORMAL,
          align: CENTER,
          type: QR_CODE
        }
      }
    ]
  end

  def line1
    "Terminated principles sentiments of no pianoforte if projection impossible. Horses pulled nature favour number yet highly his has old. Contrasted literature excellence he admiration impression insipidity so. Scale ought who terms after own quick since. Servants margaret husbands to screened in throwing. Imprudence oh an collecting partiality. Admiration gay difficulty unaffected how."
  end
end
