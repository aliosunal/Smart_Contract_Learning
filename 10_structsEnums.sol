// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract StructEnm {
   
    enum Status {
        Taken,  // 0
        Preparing, // 1
        Boxed,  // 2
        Shipped  // 3
    }

    struct Order {
        address costomer;
        string zipCode;
        uint256[] products;
        Status status;
    }

    Order[] public orders;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function createOrder(string memory _zipCode, uint256[] memory _products) external returns (uint256) {
        require(_products.length > 0, "No products.");

         Order memory order;
         order.costomer = msg.sender;
         order.zipCode = _zipCode;
         order.products = _products;
         order.status = Status.Taken;
         orders.push(order);
        
        // orders.push(
        //     order({
        //         costomer: msg.sender,
        //         zipCode: _zipCode,
        //         products: _products,
        //         status: Status.Taken
        //     })
        // );

        //orders.push(Order(msg.sender, _zipCode, _products, Status.taken));
        
        return orders.length - 1; // 0 1 2 3

    }

    function advanceOrder(uint256 _orderId) external {
        require(owner == msg.sender, "you are not authorized.");
        require(_orderId < orders.length, "Not a valid order id.");

        Order storage order = orders[_orderId] ;
        require(order.status != Status.Shipped, "order is already shipped.");

        if (order.status == Status.Taken) {
            order.status = Status.Preparing;
        } else if (order.status == Status.Preparing) {
            order.status = Status.Boxed;
        } else if (order.status == Status.Preparing) {
            order.status = Status.Shipped;
        }

    }

    function getOrder(uint256 _orderId) external view returns (Order memory) {
        require(_orderId < orders. length, "not a valid order id.");

        /*Order memory order = orders[_orderId];
        return order;
        */

        return orders[_orderId];

    }
    
    function updateZip(uint256 _orderId, string memory _zip) external {
        require(_orderId < orders. length, "not a valid order id.");
        Order storage order = orders [_orderId];
        require(order.costomer == msg.sender, "you are not the owner of the order.");
        order.zipCode = _zip;
    }

}