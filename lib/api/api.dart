import 'dart:convert';
import 'dart:io';

class AppApi {
  final HttpClient httpClient = HttpClient();

  Future<void> fetchInstagramPosts() async {
    /// TODO: Implement the fetchInstagramPosts method.
    final HttpClientRequest request = await httpClient.getUrl(Uri.parse('https://example.com'));
    final HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();
    print(stringData);
  }

  Future<void> fetchYoutubePosts() async {
    /// TODO: Implement fetching Youtube posts
    final HttpClientRequest request = await httpClient.getUrl(Uri.parse('https://example.com'));
    final HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();
    print(stringData);
  }
}