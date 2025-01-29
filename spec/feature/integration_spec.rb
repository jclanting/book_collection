require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'book[title]', with: 'Harry Potter'
    fill_in 'book[author]', with: 'J.K. Rowling'
    fill_in 'book[price]', with: '19.99'
    select '1997', from: 'book_published_date_1i'
    select 'June', from: 'book_published_date_2i'
    select '26', from: 'book_published_date_3i'
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
  end

  scenario 'invalid inputs (missing title)' do
    visit new_book_path
    fill_in 'book[author]', with: 'J.K. Rowling'
    fill_in 'book[price]', with: '19.99'
    select '1997', from: 'book_published_date_1i'
    select 'June', from: 'book_published_date_2i'
    select '26', from: 'book_published_date_3i'
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end

  scenario 'invalid inputs (missing author)' do
    visit new_book_path
    fill_in 'book[title]', with: 'Harry Potter'
    fill_in 'book[price]', with: '19.99'
    select '1997', from: 'book_published_date_1i'
    select 'June', from: 'book_published_date_2i'
    select '26', from: 'book_published_date_3i'
    click_on 'Create Book'
    expect(page).to have_content("Author can't be blank")
  end

  scenario 'invalid inputs (missing price)' do
    visit new_book_path
    fill_in 'book[title]', with: 'Harry Potter'
    fill_in 'book[author]', with: 'J.K. Rowling'
    select '1997', from: 'book_published_date_1i'
    select 'June', from: 'book_published_date_2i'
    select '26', from: 'book_published_date_3i'
    click_on 'Create Book'
    expect(page).to have_content("Price can't be blank")
  end

  scenario 'invalid inputs (missing published date)' do
    visit new_book_path
    fill_in 'book[title]', with: 'Harry Potter'
    fill_in 'book[author]', with: 'J.K. Rowling'
    fill_in 'book[price]', with: '19.99'
    click_on 'Create Book'
    expect(page).to have_content("Published date can't be blank")
  end
end
