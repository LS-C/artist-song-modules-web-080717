require 'pry'

class Song
  attr_accessor :name, :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable

  @@songs = []

  def initialize
    @name = name
    super
  end

  def self.all
    @@songs
  end

end
