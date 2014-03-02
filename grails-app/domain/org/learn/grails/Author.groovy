package org.learn.grails

class Author {
    String authorName
    Integer age
    String address

    static constraints = {
        address nullable:true, blank: true
    }
}


