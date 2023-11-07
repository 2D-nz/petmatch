package br.com.petmatch.model;

public class PetLocation {
    private int petId;
    private String latitude;
    private String longitude;

    public PetLocation() {
    }

    public PetLocation(int petId, String latitude, String longitude) {
        this.petId = petId;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public int getPetId() {
        return petId;
    }

    public void setPetId(int petId) {
        this.petId = petId;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    // Outros getters e setters, se necessário

    @Override
    public String toString() {
        return "PetLocation [petId=" + petId + ", latitude=" + latitude + ", longitude=" + longitude + "]";
    }
}
