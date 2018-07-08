
feature 'Viewing peeps with time' do

  scenario ' A user can see peeps and the time posted' do
    Peep.create(comment: 'Wow cool peep', user_id: 2)
    visit('/')
    expect(page).to have_content('Wow cool peep')
  end

end