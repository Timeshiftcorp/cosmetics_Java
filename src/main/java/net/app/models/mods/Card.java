package net.app.models.mods;

import javax.persistence.*;

@Entity
public class Card {
    private int id;
    private Integer idBuyer;
    private Integer idStore;
    private Integer idService;
    private Buyers buyersByIdBuyer;
    private Collections collectionsByIdStore;
    private java.util.Collection <CardService> cardServicesById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "id_buyer", nullable = true)
    public Integer getIdBuyer() {
        return idBuyer;
    }

    public void setIdBuyer(Integer idBuyer) {
        this.idBuyer = idBuyer;
    }

    @Basic
    @Column(name = "id_store", nullable = true)
    public Integer getIdStore() {
        return idStore;
    }

    public void setIdStore(Integer idStore) {
        this.idStore = idStore;
    }

    @Basic
    @Column(name = "id_service", nullable = true)
    public Integer getIdService() {
        return idService;
    }

    public void setIdService(Integer idService) {
        this.idService = idService;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Card card = (Card) o;

        if (id != card.id) return false;
        if (idBuyer != null ? !idBuyer.equals(card.idBuyer) : card.idBuyer != null) return false;
        if (idStore != null ? !idStore.equals(card.idStore) : card.idStore != null) return false;
        if (idService != null ? !idService.equals(card.idService) : card.idService != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (idBuyer != null ? idBuyer.hashCode() : 0);
        result = 31 * result + (idStore != null ? idStore.hashCode() : 0);
        result = 31 * result + (idService != null ? idService.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "id_buyer", referencedColumnName = "id",insertable = false,updatable = false)
    public Buyers getBuyersByIdBuyer() {
        return buyersByIdBuyer;
    }

    public void setBuyersByIdBuyer(Buyers buyersByIdBuyer) {
        this.buyersByIdBuyer = buyersByIdBuyer;
    }

    @ManyToOne
    @JoinColumn(name = "id_store", referencedColumnName = "id",insertable = false,updatable = false)
    public Collections getCollectionsByIdStore() {
        return collectionsByIdStore;
    }

    public void setCollectionsByIdStore(Collections collectionsByIdStore) {
        this.collectionsByIdStore = collectionsByIdStore;
    }

    @OneToMany(mappedBy = "cardByIdCard")
    public java.util.Collection<CardService> getCardServicesById() {
        return cardServicesById;
    }

    public void setCardServicesById(java.util.Collection<CardService> cardServicesById) {
        this.cardServicesById = cardServicesById;
    }
}
