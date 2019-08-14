RSpec.describe ThermalPrinter do
  it "has a version number" do
    expect(ThermalPrinter::VERSION).not_to be nil
  end

  describe 'SimpleLabelObject' do
    subject { SimpleLabelObject.new.generate }

    it do
      is_expected.to(
        eql(
          {
            0 => { align: 1, bold: 0, content: "Terminated principle", format: 0, type: 3 },
            1 => { align: 1, bold: 0, content: "s sentiments of n...", format: 0, type: 3 }
          }
        )
      )
    end
  end
end
