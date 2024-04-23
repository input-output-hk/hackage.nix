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
      specVersion = "1.6";
      identifier = { name = "hackage2twitter"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Lokhorst <tom@lokhorst.eu>";
      author = "Tom Lokhorst";
      homepage = "http://github.com/tomlokhorst/hackage2twitter";
      url = "";
      synopsis = "Send new Hackage releases to Twitter";
      description = "Build on the `feed2twitter` library, this program reads\nthe Hackage RSS feed and tweets each new release to\nTwitter.\n\nThe Hackage feed is read only once. To keep updating, call\nthis program every few minutes in a cron job.\n\nA local cache of the last 20 tweets is kept in a file to\nmake sure no duplicates are sent.\n\nUsage:\n\n> $ hackage2twitter username password cache-file [--debug-mode]";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackage2twitter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."feed2twitter" or (errorHandler.buildDepError "feed2twitter"))
          ];
          buildable = true;
        };
      };
    };
  }