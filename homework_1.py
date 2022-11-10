from pprint import pprint
cook_book = {}
def create_cook_book():
    with open(r'C:\Users\805520\Desktop\homeworks\cookbook.txt', 'r') as f:
        lines = f.read().split('\n\n')
        for line in lines:
            key, num, *value = line.split('\n')
            values = []
            for ingredient in value:
                ingredient_name, quantity, measure = (map(lambda x: int(x) if x.isdigit() 
                                                    else x, ingredient.split(' | ')))
                values.append({'ingredient_name': ingredient_name, 'quantity': quantity,
                            'measure': measure})
                cook_book[key] = values
        print(cook_book)


def get_shop_list_by_dishes(dishes, person_count=1):
    ingredients_for_dishes = {}
    if isinstance(dishes, list):
        for key in dishes:
            if key in cook_book:
                for item in cook_book[key]:
                    counts_of_ingredients = {'measure': item['measure'], 'quantity': item['quantity']}
                    for ingredient in item.values():
                        if ingredient == item['ingredient_name']:
                            if ingredient not in ingredients_for_dishes:
                                ingredients_for_dishes[ingredient] = counts_of_ingredients
                            elif ingredient in ingredients_for_dishes:
                                ingredients_for_dishes[ingredient]['quantity'] += item['quantity']
        for key in ingredients_for_dishes.values():
            key['quantity'] *= person_count
        pprint(ingredients_for_dishes)
    elif dishes in cook_book:
        for item in cook_book[dishes]:
            counts_of_ingredients = {'measure': item['measure'], 'quantity': item['quantity']}
            for ingredient in item.values():
                if ingredient == item['ingredient_name']:
                    ingredients_for_dishes[ingredient] = counts_of_ingredients
        for key in ingredients_for_dishes.values():
            key['quantity'] *= person_count
        pprint(ingredients_for_dishes)
    else:
        print('Рецепт не найден')





create_cook_book()
# get_shop_list_by_dishes('Запеченный картофель', 2)