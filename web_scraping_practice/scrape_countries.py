import requests
from bs4 import BeautifulSoup

url = 'https://www.scrapethissite.com/pages/simple/'

response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')

countries = soup.find_all('div', class_='row')

dictionary = []
for c in countries:
    country_tag = c.find('h3', class_='country-name')
    country_name = country_tag.get_text(strip=True) if country_tag else None
    

    capital_tag = c.find('span', class_='country-capital')
    country_capital = capital_tag.get_text(strip=True) if capital_tag else None

    population_tag = c.find('span', class_='country-population')
    country_population = population_tag.get_text(strip=True) if population_tag else None

    area_tag = c.find('span', class_='country-area')
    country_area = area_tag.get_text(strip=True) if area_tag else None

    dictionary.append({
        'Country': country_name,
        'Capital': country_capital,
        'Population': country_population,
        'Area': country_area
    })

    print(dictionary)