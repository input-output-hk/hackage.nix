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
      specVersion = "1.10";
      identifier = { name = "logging"; version = "3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Simplified logging in IO for application writers.";
      description = "@logging@ is a wrapper around @fast-logger@ which makes\nit easy to log from 'IO'. It provides the following conveniences on top of\nthose libraries:\n\n- A set of shorter functions to type: 'debug', 'log', 'warn', plus others\nthat flush after each message, or which allow providing a message source\nstring.\n\n- Logging variants of 'error', 'trace' and 'traceShow', called 'errorL',\n'traceL' and 'traceShowL'.  These use 'unsafePerformIO' in order to act as\ndirect replacements, so the usual caveats apply.\n\n- A global function, 'setDebugLevel', which uses a global 'IORef' to record\nthe logging level, saving you from having to carry around the notion of\n\"verbosity level\" in a Reader environment.\n\n- A set of \"timed\" variants, 'timedLog' and 'timedDebug', which report how\nlong the specified action took to execute in wall-clock time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }