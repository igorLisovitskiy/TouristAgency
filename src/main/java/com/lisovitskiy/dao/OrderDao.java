package com.lisovitskiy.dao;

import java.util.List;

import com.lisovitskiy.pojos.Order;

public interface OrderDao {
	Order getOrderById(int orderId);

	List<Order> getAllOrders();
	List<Order> getOrdersByUserId(int userId);
	
	boolean createOrder(int userId,int tourId);
	boolean deleteOrder(int orderId);
}
