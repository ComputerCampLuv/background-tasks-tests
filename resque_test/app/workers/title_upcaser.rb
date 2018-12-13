class TitleUpcaser
  @queue = :upcaser_queue

  def self.perform(thing_id)
    sleep 10
    thing = Thing.find(thing_id)
    thing.update(title: thing.title.upcase)
  end
end