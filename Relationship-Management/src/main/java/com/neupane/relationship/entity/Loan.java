/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.relationship.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author parlad
 */
@Entity
@Table(name = "loan")
public class Loan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "loan_taker")
    private String loanTaker;
    @Column(name = "taken_amount")
    private int loanAmount;
    @Column(name = "taken_date", insertable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date takenDate;
    @Column(name = "return_date", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date returnDate;
    @Column(name = "status")
    private boolean status;

    public Loan() {
    }

    public Loan(int id, String loanTaker, int loanAmount, boolean status) {
        this.id = id;
        this.loanTaker = loanTaker;
        this.loanAmount = loanAmount;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoanTaker() {
        return loanTaker;
    }

    public void setLoanTaker(String loanTaker) {
        this.loanTaker = loanTaker;
    }

    public int getLoanAmount() {
        return loanAmount;
    }

    public void setLoanAmount(int loanAmount) {
        this.loanAmount = loanAmount;
    }

    public Date getTakenDate() {
        return takenDate;
    }

    public void setTakenDate(Date takenDate) {
        this.takenDate = takenDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "loan{" + "id=" + id + ", loanTaker=" + loanTaker + ", loanAmount=" + loanAmount + ", takenDate=" + takenDate + ", returnDate=" + returnDate + ", status=" + status + '}';
    }

}
