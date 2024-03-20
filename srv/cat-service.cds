using my.bookshop as my from '../db/data-model';

service CatalogService @(requires:'any') {
    entity Books as projection on my.Books;
    entity BOOK_REVIEWS_SYNONYM as projection on my.BOOK_REVIEWS_SYNONYM;

    @readonly
    entity test as
    select A.title, B.REVIEW
    FROM my.Books as A inner join  my.BOOK_REVIEWS_SYNONYM as B 
    ON A.ID = B.BOOK_ID;
}
