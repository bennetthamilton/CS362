
class FakeDatabase
  attr_accessor :records

  def initialize
    @records = []
  end

  def record_count
    @records.length
  end

  def append(entry)
    @records << entry
  end

  def record_get_all
    @records
  end
end

