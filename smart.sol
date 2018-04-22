pragma solidity ^0.4.24;
 
contract SmartTrading{
    
    uint currentSum; //Текущая сумма
    address owner; //Адрес трейдера
    
    
    constant address traderId; //Адресс трейдера
    constant uint startSum; //Начальный капитал, с которого мы начинаем трейдинг
    constant uint lifeTime; //Время действия контракта
    constant uint finam_percent; //Процент Финама
    constant uint trader_percent; //Процент трейдера
    
    function SmartTrading() public {
        traderId = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    struct Investor {
        uint placedSum; //Инвестируемая сумма
        bool insurance; //Нужна ли страховка
        uint insurance_sum; //Сумма страховки
    }

    mapping(address => Investor) investors;
    
    function getNumberOfInvestors() public returns (uint) {
        //Возвращает число инвесторов
        return investors.length;
    }
    
    function invest(uint placedSum, bool insurance, uint insurance_sum) public {
        //Добавляем инвестора в список инвесторов
        investors[msg.sender] = new Investor(uint placedSum, bool insurance, uint insurance_sum); 
    }

    function moneyCollected() public constant returns (bool) {
        uint sum = 0;
        //Пробегает по массиву инвесторов и складывает вложенные суммы
        //Если сумма инвесторов больше или равна startSum, тогда return true;
        //Иначе return false;
        for(uint i=0; i<investors.length; i++) { 
            sum += investors[i].placedSum;
        }
        if (sum >= startSum) { return true;}
        else { return false;}
    }
    
    function trade(string tokenA, string tokenB, uint amount, ) public onlyOwner {
        //Конвертирует amount токена A в токен B
    }
    
    function saleToken(string tokenA) public onlyOwner {
        //Продает весь запас токена А по команде трейдера
    }
    
    
}
