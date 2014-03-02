package org.learn.grails

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

class CustomAuthorController {

    def index() {}


    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [authorList: Author.list(params), totalData: Author.count()]
    }

    def add() {
        [model: new Author()]
    }


    def addNew() {
        def author = new Author(params)
        if (!author.save(flush: true)) {
            render(view: "add", model: [author: author])
            return
        }
        redirect(action: "list")

    }


    def delete() {
        def author = Author.get(params.id)

        def map;
        if (author == null) {
            map = [res: "Delete Failed", msg: "Data Not Found"]
        } else {
            try {
                author.delete(flush: true)
                map = [res: "Delete Succeed"]
            } catch (DataIntegrityViolationException dive) {
                map = [res: "Delete Failed", msg: dive.message]
            }
        }

        render map as JSON
    }

    def edit(Long id) {
        def author = Author.get(id)
        if (author == null) {
            redirect(action: "list")
            return
        }
        [model: author]
    }

    def update() {
        def author = Author.get(params.id);
        if (author != null) {
            author.authorName = params.authorName
            author.address = params.address
            author.age = params.age

            if (author.save(flush: true)) {
                redirect(action: "list")
            } else {
                [msg: "Update Failed"]
            }
        }else{
            [msg:"Update Failed, data cannot be found"]
        }
    }
}
