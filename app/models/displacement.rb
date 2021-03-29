class Displacement < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '50cc以下' },
    { id: 2, name: '51~125cc' },
    { id: 3, name: '126~250cc' },
    { id: 4, name: '251~400cc' },
    { id: 5, name: '401~750cc' },
    { id: 6, name: '751~1000cc' },
    { id: 7, name: '1001cc以上' }
  ]

  include ActiveHash::Associations
  has_many :bikkes
end