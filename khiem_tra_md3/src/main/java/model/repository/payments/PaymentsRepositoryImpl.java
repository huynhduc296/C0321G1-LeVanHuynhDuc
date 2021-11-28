package model.repository.payments;

import model.bean.Payments;

import java.util.List;

public interface PaymentsRepositoryImpl {
    List<Payments> findByAll();
    Payments findById(int paymentsId);
}
