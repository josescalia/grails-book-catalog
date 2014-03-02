import org.learn.grails.Author
import org.learn.grails.Book

class BootStrap {

    def init = { servletContext ->

        if(Author.count == 0){
            def authorMojo = new Author(authorName: "Mojo", age: 18, address: "Jakarta").save(failOnError:true )
            def authorJosescalia = new Author(authorName: "Josescalia", age: 29, address: "Medan").save(failOnError:true )
            def authorJagoanNeon = new Author(authorName: "Jagoan Neon", age: 19, address: "Bandung").save(failOnError:true )

            if(Author.count > 0){
               new Book(bookTitle: "Learning Grails", author:authorMojo, publishedYear:2013 ).save(failOnError:true )
               new Book(bookTitle: "Java Fundamental", author:authorJagoanNeon, publishedYear:2010).save(failOnError:true )
               new Book(bookTitle: "The Art of Coding", author:authorJosescalia, publishedYear:2008).save(failOnError:true )
            }
        }


    }
    def destroy = {
    }
}
