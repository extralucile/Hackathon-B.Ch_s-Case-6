# Кейс №6

## Finam 

### Входные данные:
Развитие сервиса автоследования Comon.ru как мультиброкерской платформы
Описание проекта: сервис автоследования Comon.ru позволяет опытному трейдеру открыть свою 
стратегию для всех желающих. Они прикрепляют свои брокерские 
счета к этой стратегии, сделки 
опытного трейдера повторяются на них автоматически. Текущие ограничения 
–
сервис доступен только 
для клиентов «ФИНАМа».

### Задача:

Со стороны участников рынка есть запрос на то, чтобы сделать сервис мультиброкерским. К 
существу
ющим стратегиям смогут подключаться клиенты других брокеров. Кроме того, они смогут 
представить в рамках сервиса свои стратегии. Но при этом «ФИНАМ» видит только сделки своих 
клиентов. Значит, возникают задачи верификации доходностей стратегий и вычисления
комиссии 
(платформа будет работать по модели revenue sharing). Интересны кейсы решения данных задач с 
помощью блокчейн, а также другие идеи по развитию сервиса.


### Наш сценарий:

Мы предлагаем на базе сервиса comon.ru создать мультиброкерскую платформу, позволяющую брокерам составлять смарт-контракты в несколько кликов. Смарт-контракты предполагается создавать на языке Solidity в блокчейн-системе Ethereum, которая обеспечит прозрачность сделок и позволит собирать статистику брокеров и давать им оценки. 


Суть сценария:

Брокер создаёт смарт-контракт, привлекая инвесторов. Последние вкладывают деньги в стратегию брокера, подписывая смарт-контракт.
Когда собрана достаточная сумма инвестиций, брокер запускает трейдинг. Когда истекает время действия контракта, инвесторам возвращается вложенный процент, а компания "Финам" получает свой процент за предоставление услуг своей платформы.
Также мы предлагаем инвесторам застраховать свою сделку, что также обеспечивает прибыль "Финаму".

