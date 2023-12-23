module basic::storage {

    use std::string;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};

    /// A data store.
    struct DataStore has key, store {
        id: UID,
        data: string::String
    }

    public fun owner(store: &DataStore): address {
        store.owner
    }

    /// Create a new data store.
    public entry fun create(ctx: &mut TxContext) {
        transfer::public_transfer(DataStore {
            id: object::new(ctx),
            owner: tx_context::sender(ctx),
            data: string::utf8("")
        }, tx_context::sender(ctx));
    }

    /// Write data to a data store.
    public entry fun write_data(store: &mut DataStore, data: string::String, ctx: &TxContext) {
        assert!(store.owner == tx_context::sender(ctx), 0);
        store.data = data;
    }

    /// Read data from a data store.
    public entry fun read_data(store: &DataStore, ctx: &TxContext): string::String {
        assert!(store.owner == tx_context::sender(ctx), 0);
        store.data
    }
}
