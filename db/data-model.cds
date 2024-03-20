namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}
@cds.persistence.exists
entity BOOK_REVIEWS_SYNONYM {
  key REVIEW_ID: Integer;
  BOOK_ID : Integer;
  RATING: Integer;
  REVIEW: String(500);
}