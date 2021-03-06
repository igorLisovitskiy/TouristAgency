package com.lisovitskiy.dao;

import java.util.List;

import com.lisovitskiy.pojos.RentalReceipt;

public interface RentalReceiptDao {

	RentalReceipt getRentalReceiptById(int yourId);

	List<RentalReceipt> getAllRentalReceipts();

	List<RentalReceipt> getRentalReceiptsByOrderId(int orderId);

	boolean deleteRentalReceipt(int receiptId);

	boolean createRentalReceipt(int orderId, int rentalId, String from, String to, int price);

	boolean updateRentalReceipt(int receiptId, int orderId, int rentalId, String from, String to, int price);

}
