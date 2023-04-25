#[contract]
mod Contract {
    struct Storage {
        balance: u128,
    }

    #[event]
    fn BalanceIncreased(amount: u128) {}

    #[constructor]
    fn constructor(initial_balance: u128) {
        balance::write(initial_balance);
    }

    #[external]
    fn increase_balance(amount: u128) {
        let new_balance = balance::read() + amount;
        balance::write(new_balance);
        BalanceIncreased(new_balance);
    }

    #[view]
    fn get_balance() -> u128 {
        balance::read()
    }
}
