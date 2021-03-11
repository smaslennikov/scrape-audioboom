# Audioboom Scraper

This is a simple script to scrape entire podcast series off Audioboom.

## Usage

The first argument is the URL to start with, the second one is the counter to go off of. Episodes are stored in the format of `$COUNTER-$NAME.mp3`. For example,

```
./scrape-audioboom https://audioboom.com/posts/6794119-the-duncan-trussell-family-hour-episode-1 1
```

will produce `1-the-duncan-trussell-family-hour-episode-1.mp3` and so on.

## Known issues

1. At the end of the series, the script loops over and continuously grabs the last two episodes. In my case, Audioboom ratelimited my IP after an extra 700 snatches of the same two episodes (though the entire series of 426 episodes successfully downloaded without getting ratelimited)
1. Errors aren't handled
1. Errors do happen sometimes, but aren't clearly provided to the user

## License

This code and information is [licensed under MIT](LICENSE).
