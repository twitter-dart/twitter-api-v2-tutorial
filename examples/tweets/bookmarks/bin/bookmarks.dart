import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

/// # Introduction
///
/// Bookmarks are a core feature of the Twitter app that allows you to “save”
/// Tweets and easily access them later. With these endpoints, you can retrieve,
/// create, delete or build solutions to manage your Bookmarks via the API.
///
/// ## Manage Bookmarks
///
/// We have two available methods for manage Bookmarks, POST and DELETE.
/// The POST method lets you create Bookmarks. Likewise, the DELETE method
/// allows you to delete a specific Bookmark.
///
/// There is a per-user rate limit of 50 requests per 15 minutes for the POST
/// and DELETE methods.
///
/// Since you are making requests on behalf of a user with the manage Bookmarks
/// endpoints, you must authenticate by generating a user Access Token with
/// OAuth 2.0. You can use the Authorization Code with PKCE grant flow to do so.
/// To use this endpoint you must pass in the scopes tweet.read, users.read, and
/// bookmark.write.
///
/// ## Bookmarks lookup
///
/// The Bookmarks lookup endpoint has one method available, GET.
/// This method allows you to get Bookmarks back from yourself or an
/// authenticated account. Pagination tokens will be provided for paging
/// through large sets of results for this endpoint.
///
/// There is a per-user rate limit of 180 requests per 15 min window for the
/// GET method. With this endpoint you will get back 800 of your most recent
/// Bookmarked Tweets.
///
/// Since you are making requests on behalf of a user with the lookup Bookmarks
/// endpoints, you must authenticate by generating a user Access Token with
/// OAuth 2.0. You can use the Authorization Code with PKCE grant flow to do so.
/// To use this endpoint you must pass in the scopes tweet.read, users.read, and
/// bookmark.read.
///
/// ## More Information
///
/// - https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/introduction
void main() async {
  //! You need to get keys and tokens at https://developer.twitter.com
  //! Authentication with OAuth2.0 is the default.
  //!
  //! Note that to use endpoints that require certain user permissions,
  //! such as Tweets and Likes, you need a token issued by OAuth2.0 PKCE.
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final me = await twitter.usersService.lookupMe();
    final tweets = await twitter.tweetsService.searchRecent(query: '#ElonMusk');

    await twitter.tweetsService.createBookmark(
      userId: me.data.id,
      tweetId: tweets.data.first.id,
    );

    final bookmarks = await twitter.tweetsService.lookupBookmarks(
      userId: me.data.id,
    );

    print(bookmarks);

    await twitter.tweetsService.destroyBookmark(
      userId: me.data.id,
      tweetId: tweets.data.first.id,
    );
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
