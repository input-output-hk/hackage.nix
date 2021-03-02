{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "feed-cli"; version = "2008.5.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Isaac Potoczny-Jones, 2008";
      maintainer = "Isaac Potoczny-Jones <ijones@syntaxpolice.org>";
      author = "Isaac Potoczny-Jones <ijones@syntaxpolice.org>";
      homepage = "http://www.syntaxpolice.org/darcs_repos/feed-cli";
      url = "";
      synopsis = "A simple command line interface for creating and updating feeds like RSS";
      description = "This program generates RSS 2.0 (http://www.rssboard.org/rss-2-0-1-rv-6)\nfeeds based on command line arguments.  Use it to easily create and update\nfeeds from shell scripts, build scripts, cron jobs, CGIs, or other programs\ninstead of using an RSS or Atom library.\n\neg: feed-cli new-item -t\"entry of the day\" -d\"This is a description...\" -u/tmp/feed.xml  -lhttp://www.syntaxpolice.org";
      buildType = "Simple";
      };
    components = {
      exes = {
        "feed-cli" = {
          depends = [
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }