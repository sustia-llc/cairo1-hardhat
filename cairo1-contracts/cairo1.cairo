#[contract]
mod Contract {
    struct Storage {
        balance: felt252,
    }

    #[event]
    fn BalanceIncreased(amount: felt252) {}

    #[constructor]
    fn constructor(initial_balance: felt252) {
        balance::write(initial_balance);
    }

    #[external]
    fn increase_balance(amount: felt252) {
        let new_balance = balance::read() + amount;
        balance::write(new_balance);
        BalanceIncreased(new_balance);
    }

    #[view]
    fn get_balance() -> felt252 {
        balance::read()
    }
}
