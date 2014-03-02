package org.learn.grails

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

class CustomBookController {

    def index() {}

    def list(Integer max){
        params.max = Math.min(max ?: 10, 100)
        [bookList: Book.list(params), totalData: Book.count()]
    }

    def add() {
        [model: new Book(), authorList : Author.list(), yearList:initYear()]
    }


    def addNew() {
        def book = new Book()
        book.bookTitle = params.bookTitle
        book.publishedYear = Integer.parseInt(params.publishedYear)
        book.author = Author.get(params.authorId)
        if (!book.save(flush: true)) {
            render(view: "add", model: [book: book])
            return
        }
        redirect(action: "list")

    }


    def delete() {
        def book = Book.get(params.id)

        def map;
        if (book == null) {
            map = [res: "Delete Failed", msg: "Data Not Found"]
        } else {
            try {
                book.delete(flush: true)
                map = [res: "Delete Succeed"]
            } catch (DataIntegrityViolationException dive) {
                map = [res: "Delete Failed", msg: dive.message]
            }
        }

        render map as JSON
    }

    def edit(Long id) {
        def book = Book.get(id)
        if (book == null) {
            redirect(action: "list")
            return
        }
        [model: book, authorList: Author.list(), yearList: initYear()]
    }

    def update() {
        def book = Book.get(params.id);
        if (book != null) {
            book.bookTitle = params.bookTitle
            book.author = Author.get(params.authorId)
            book.publishedYear = Integer.parseInt(params.publishedYear)

            if (book.save(flush: true)) {
                redirect(action: "list")
            } else {
                [msg: "Update Failed"]
            }
        }else{
            [msg:"Update Failed, data cannot be found"]
        }
    }

    /*create year list*/
    def initYear(){
        def yearList = new ArrayList<Integer>();
        for(Integer year=1980; year <= 2030; year ++){
             yearList.add(year);
        }
        return yearList;
    }
}
