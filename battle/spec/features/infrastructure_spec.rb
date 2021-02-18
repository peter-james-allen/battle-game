feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle'
  end
end

feature 'Test input' do
  scenario 'enter player names' do
    sign_in_and_play
    expect(page).to have_content 'Pete vs Adam'
  end
end

feature 'Test Player class' do
  scenario 'view player health' do
    sign_in_and_play
    expect(page).to have_content 'Pete: 100HP'
  end
end

feature 'Test Attack move' do
  scenario 'player 1 attacks' do
    sign_in_and_play
    click_button "p1_attack"
    expect(page).to have_content 'Pete attacked Adam!'
  end
end