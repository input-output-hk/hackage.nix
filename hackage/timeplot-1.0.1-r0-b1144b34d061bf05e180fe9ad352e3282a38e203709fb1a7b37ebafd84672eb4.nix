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
      identifier = { name = "timeplot"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov, 2009-2011";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "http://haskell.org/haskellwiki/Timeplot";
      url = "";
      synopsis = "A tool for visualizing time series from log files.";
      description = "A tool for visualizing time series from log files.\nReads an input file with events in different \"tracks\" and draws a diagram for\neach track, where a diagram may be one of several types. See --help for help and the\nhomepage for a bigger description, examples and a tutorial. See presentation:\n<http://www.slideshare.net/jkff/two-visualization-tools> or download:\n<http://jkff.info/presentations/two-visualization-tools.pdf>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tplot" = {
          depends = [
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or (errorHandler.buildDepError "data-accessor-template"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."strptime" or (errorHandler.buildDepError "strptime"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hashmap" or (errorHandler.buildDepError "hashmap"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      };
    }