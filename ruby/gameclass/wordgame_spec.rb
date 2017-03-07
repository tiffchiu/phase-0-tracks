require_relative 'wordgame'

describe WordGame do
  let(:game) { WordGame.new("unicorn") }

  it "prints out the number of blank spaces based on word" do
    expect(game.gameboard).to eq "_ _ _ _ _ _ _"
  end

  it "ends the game if all the user runs out of guesses" do
    game.guess_count = 10
    expect(game.game_over).to eq true
  end

end