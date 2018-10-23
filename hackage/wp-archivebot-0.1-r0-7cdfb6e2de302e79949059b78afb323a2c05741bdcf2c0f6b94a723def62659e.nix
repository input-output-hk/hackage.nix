{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wp-archivebot";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gwern0@gmail.com";
      author = "Gwern";
      homepage = "";
      url = "";
      synopsis = "Subscribe to a wiki's RSS feed and archive external links";
      description = "A MediaWiki's RecentChanges or NewPages links to every new edit or article; this bot will\npoll the corresponding RSS feeds (easier and more reliable than parsing the HTML), follow\nthe links to the new edit/article, and then use TagSoup to filter out every off-wiki link\n(eg. to http://cnn.com).\n\nWith this list of external links, the bot will then fire off requests to http://webcitation.org/,\nwhich will make a backup (similar to the Internet Archive, but on-demand).\n\nExample: to archive links from every article in the English Wikipedia's RecentChanges:\n\n> wp-archivebot gwern0@gmail.com 'http://en.wikipedia.org/w/index.php?title=Special:RecentChanges&feed=rss'\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wp-archivebot" = {
          depends  = [
            (hsPkgs.feed)
            (hsPkgs.tagsoup)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.base)
            (hsPkgs.parallel)
          ];
        };
      };
    };
  }