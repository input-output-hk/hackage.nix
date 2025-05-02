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
      specVersion = "3.0";
      identifier = { name = "hoare"; version = "0.1.1.0"; };
      license = "Zlib";
      copyright = "";
      maintainer = "matt@bitbashing.io";
      author = "Matt Kline";
      homepage = "";
      url = "";
      synopsis = "Simple tools for communicating sequential processes";
      description = "Hoare was right—many concurrent programs can be simply expressed\nas a series of concurrent actors (threads) consuming and producing\nmessages. Haskell provides uniquely great tools (green threads and STM)\nfor doing so. This package provides:\n\n- Functions for using bounded STM types like\n  `TBQueue` and `TMVar` as /channels/ between threads.\n\n- A /closeable/ @TBCQueue@ for programs where the input ends.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }