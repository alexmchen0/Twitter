# Project 4 - *Twitter*

A basic twitter app to read and compose tweets the [Twitter API](https://apps.twitter.com/).

Time spent: **12** hours spent in total

## User Stories

The following **required** functionality is completed:

- [X] User can sign in using OAuth login flow
- [X] User can view last 20 tweets from their home timeline
- [X] The current signed in user will be persisted across restarts
- [X] In the home timeline, user can view tweet with the user profile picture, username, tweet text, and timestamp.
- [X] Retweeting and favoriting should increment the retweet and favorite count.

The following **optional** features are implemented:

- [ ] User can load more tweets once they reach the bottom of the feed using infinite loading similar to the actual Twitter client.
- [X] User should be able to [unretweet and - not yet] unfavorite and should decrement the retweet and favorite count.
- [ ] User can pull to refresh.

# Project 5 - *Twitter*

Time spent: **25** hours spent in total

## User Stories

The following **required** functionality is completed:

- [X] Tweet Details Page: User can tap on a tweet to view it, with controls to retweet, favorite, and reply.
- [X] Profile page:
   - [X] Contains the user header view
   - [X] Contains a section with the users basic stats: # tweets, # following, # followers
- [X] Home Timeline: Tapping on a user image should bring up that user's profile page
- [X] Compose Page: User can compose a new tweet by tapping on a compose button.

The following **optional** features are implemented:

- [X] When composing, you should have a countdown in the upper right for the tweet limit.
- [X] After creating a new tweet, a user should be able to view it in the timeline immediately without refetching the timeline from the network.

The following **additional** features are implemented:

- [X] General improvements: tweet time posted formatting (e.g 5m, 23h), number formatting and rounding (e.g. 15.5k, 5.1m), keyboard shows automatically in compose view controller, etc.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://imgur.com/zj08UOE.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

<img src='http://imgur.com/thzfp5y.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/)

## License

    Copyright 2017 Alex Chen

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
