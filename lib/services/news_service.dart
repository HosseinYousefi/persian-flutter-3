class NewsService {
  Stream<String> watchNews(String token) {
    if (!token.startsWith('t')) {
      throw Exception('Token is wrong!');
    }
    return Stream.periodic(
      Duration(seconds: 2),
      (index) =>
          'A new thing happened #$index!, your username is ${token.substring(1)}',
    );
  }
}
