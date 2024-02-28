# We want to make changes to summarize(), so we want to get it under
# test first.
# 
# Use the Pull Up Feature technique to get summarize() under test
# without dealing with the database.

class DatabaseThingServices
  def add_things(t)
    @things.push(t)
  end

  def summarize
    total = 0
    @things.each { |t|
      total += t
    }
    return total
  end
end

class DatabaseThing < DatabaseThingServices
  def initialize
    @things = []
    sleep 10
    raise "failed to connect to database"
  end

  def query_database_for_things(key)
    sleep 10
    raise "failed to connect to database"
    #database_result.each { |r|
    #  self.add_things(r.item)
    #}
  end
end

