class LazyWorker
  include Sidekiq::Worker

  def perform(thing_id)
    sleep 10
    thing = Thing.find(thing_id)
    thing.update(title: 'All Gone!', quantity: 0)
  end
end
