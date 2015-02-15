package gormpractiseproject

class IndividualAddress implements Serializable {

    static belongsTo = Individual

    String houseNo
    String roadNo

    static constraints = {
    }
}
