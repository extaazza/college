def kiosk_sales():
    newspaper_price = 30.0
    magazine_price = 20.0
    total_sales = 0
    total_revenue = 0.0
    while True:
        choice = input('Что вы хотите купить? (G - газета, M - журнал): ').strip().upper()
        if choice == 'G':
            print(f'Цена газеты: {newspaper_price:.2f} руб.')
            payment = float(input('Введите сумму оплаты: '))
            if payment >= newspaper_price:
                total_revenue += newspaper_price
                total_sales += 1
                print(f'Спасибо за покупку! Сдача: {(payment - newspaper_price):.2f} руб.')
            else:
                print('Недостаточно средств для покупки газеты.')
        elif choice == 'M':
            print(f'Цена журнала: {magazine_price:.2f} руб.')
            payment = float(input('Введите сумму оплаты: '))
            if payment >= magazine_price:
                total_revenue += magazine_price
                total_sales += 1
                print(f'Спасибо за покупку! Сдача: {(payment - magazine_price):.2f} руб.')
            else:
                print('Недостаточно средств для покупки журнала.')
        else:
            print('Некорректный выбор. Пожалуйста, выберите G или M.')
        continue_selling = input('Хотите продолжить продажи? (Y - да, N - нет): ').strip().upper()
        if continue_selling == 'N':
            break
    print(f'Общее количество продаж: {total_sales}')
    print(f'Общая выручка: {total_revenue:.2f} руб.')
if __name__ == "__main__":
    kiosk_sales()