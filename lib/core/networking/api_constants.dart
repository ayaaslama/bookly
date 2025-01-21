class ApiConstants {
  static const String apiBaseUrl = "https://www.googleapis.com/books/v1/";
  static const String newestBooksEndpoint =
      "https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest";
  static const String allBooksEndpoint =
      "https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:Programming";
}
