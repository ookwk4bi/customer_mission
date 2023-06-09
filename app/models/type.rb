class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '常連様' },
    { id: 3, name: '対応注意' },
    { id: 4, name: 'クレーマー' },
    { id: 5, name: '特別対応あり' },
    
  ]
  include ActiveHash::Associations
  has_many :customers
end