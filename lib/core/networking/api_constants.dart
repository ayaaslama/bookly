class ApiConstants {
  static const String apiBaseUrl = "https://www.googleapis.com/books/v1/";
  static const String newestBooksEndpoint =
      "volumes?Filtering=free-ebooks&Sorting=newest&q=computer science";
  static const String allBooksEndpoint =
      "volumes?Filtering=free-ebooks&q=Programming";
  static const String similarBooksEndpoint =
      "volumes?Filtering=free-ebooks&q=Programming&Sorting=relevance";
}
