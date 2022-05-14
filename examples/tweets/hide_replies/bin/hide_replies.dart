import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

/// # Introduction
///
/// Many people want the benefit of hiding replies to improve the quality of
/// their conversations. Sometimes it’s difficult or overwhelming to do so
/// without help, particularly when people receive a large number of replies,
/// when those replies contain offensive or abusive language, or when they
/// want to confine certain conversations to specific groups like close friends.
///
/// This endpoint gives you the ability to programmatically hide or unhide
/// replies using criteria you define. Just like the functionality in the main
/// Twitter experience, replies will be hidden from the main conversation but
/// still visible on a separate page. You can use the endpoint to create apps
/// to help people hide replies they don’t find valuable.
///
/// The hide replies endpoint uses either OAuth 1.0a User Context or OAuth 2.0
/// Authorization Code with PKCE authentication. If successful, the endpoint
/// hides a single Reply that was published in a Tweet conversation that was
/// initiated by an authenticated user. Each conversation supports hiding
/// up to 725 Tweets.
///
/// ## More Information
///
/// - https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/introduction
void main() async {
  //! You need to get keys and tokens at https://developer.twitter.com
  //! Authentication with OAuth2.0 is the default.
  //!
  //! Note that to use endpoints that require certain user permissions,
  //! such as Tweets and Likes, you need a token issued by OAuth2.0 PKCE.
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    await twitter.tweetsService.createHiddenReply(tweetId: 'tweetId');
    await twitter.tweetsService.destroyHiddenReply(tweetId: 'tweetId');
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
