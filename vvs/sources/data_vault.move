// SPDX-License-Identifier: Apache-2.0

module vvs::Storage {
    use sui::transfer;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};

    /// Storage struct to hold the string message
    struct Storage has key {
        id: UID,
        owner: address,
        message: vector<u8>
    }

    public fun owner(storage: &Storage): address {
        storage.owner
    }

    public fun getMessage(storage: &Storage): vector<u8> {
        storage.message
    }

    /// Create and share a Storage object with a string message.
    public entry fun create(ctx: &mut TxContext, message: vector<u8>) {
        transfer::share_object(Storage {
            id: object::new(ctx),
            owner: tx_context::sender(ctx),
            message: message
        })
    }

    /// Set message (only runnable by the Storage owner)
    public entry fun setMessage(storage: &mut Storage, message: vector<u8>, ctx: &TxContext) {
        assert!(storage.owner == tx_context::sender(ctx), 0);
        storage.message = message;
    }
}
