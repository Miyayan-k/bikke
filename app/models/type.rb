class Type < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'スーパースポーツ' },
    { id: 2, name: 'ネイキッド' },
    { id: 3, name: 'アメリカン' },
    { id: 4, name: 'ストリート' },
    { id: 5, name: 'オフロード' },
    { id: 6, name: 'モタード' },
    { id: 7, name: 'スクーター' },
    { id: 8, name: 'トライク' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :bikkes
end