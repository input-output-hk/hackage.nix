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
    flags = {
      llvm-fast = false;
      library = false;
      development = false;
      parallel-gc = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "tweet-hs"; version = "1.0.1.33"; };
      license = "BSD-3-Clause";
      copyright = "2016, 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/command-line-tweeter#readme";
      url = "";
      synopsis = "Command-line tool for twitter";
      description = "a Command Line Interface Tweeter";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."authenticate-oauth" or (errorHandler.buildDepError "authenticate-oauth"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."htoml-megaparsec" or (errorHandler.buildDepError "htoml-megaparsec"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      exes = {
        "tweet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tweet-hs" or (errorHandler.buildDepError "tweet-hs"))
            ];
          buildable = if flags.library then false else true;
          };
        };
      tests = {
        "tweeths-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tweet-hs" or (errorHandler.buildDepError "tweet-hs"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "tweeths-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."tweet-hs" or (errorHandler.buildDepError "tweet-hs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      };
    }