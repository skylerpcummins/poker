class Card
  SUITS = [:club, :diamond, :heart, :spade]
  BJ_VALUES = {'ace' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7,
            'eight' => 8, 'nine' => 9, 'ten' => 10, 'jack' => 11, 'queen' => 12, 'king' => 13}
  FACE_VALUES = {ace: 'ace', two: 'two', three: 'three', four: 'four', five: 'five', six: 'six',
                seven: 'seven', eight: 'eight', nine: 'nine', ten: 'ten', jack: 'jack', queen: 'queen',
                king: 'king'}

  attr_reader :face_value, :suit, :bj_value

  def initialize (face_value, suit)
    @face_value = FACE_VALUES[face_value]
    @suit = suit
    @bj_value = BJ_VALUES[@face_value]
  end

  def self.suits
    SUITS
  end

  def self.face_values
    FACE_VALUES
  end
end
