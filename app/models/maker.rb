class Maker < ActiveHash::Base
  self.data = [
    { id: 1, name: 'HONDA' },
    { id: 2, name: 'YAMAHA' },
    { id: 3, name: 'SUZUKI' },
    { id: 4, name: 'KAWASAKI' },
    { id: 5, name: 'DUCATI' },
    { id: 6, name: 'BMW' },
    { id: 7, name: 'Harley-Davidson' },
    { id: 8, name: 'TRIUMPH' },
    { id: 9, name: 'KTM' },
    { id: 10, name: 'aprilia' },
    { id: 11, name: 'MOTO GUZZI' },
    { id: 12, name: 'MV AGUSTA' },
    { id: 13, name: 'Vespa' },
    { id: 14, name: 'Indian' },
    { id: 15, name: 'KYMCO' },
    { id: 16, name: 'Buell' },
    { id: 17, name: 'bimota' },
    { id: 18, name: 'Husqvana' },
    { id: 19, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :reviews
end