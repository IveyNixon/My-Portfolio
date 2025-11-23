import requests
from bs4 import BeautifulSoup

page = requests.get("http://books.toscrape.com/")
soup = BeautifulSoup(page.text, "html.parser")

books = soup.find_all('article', class_='product_pod')

for book in books:

    image = book.find('div', class_='image_container').img['src']
    title = book.h3.a['title']
    price = book.find('p', class_='price_color').get_text()
    print(f'Title: {title}, Price: {price}, Image URL: {image}')
