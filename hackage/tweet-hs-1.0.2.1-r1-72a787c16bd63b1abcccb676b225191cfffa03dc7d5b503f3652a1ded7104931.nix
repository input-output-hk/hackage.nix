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
      identifier = { name = "tweet-hs"; version = "1.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
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
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."htoml-megaparsec" or (errorHandler.buildDepError "htoml-megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          ];
        buildable = true;
        };
      exes = {
        "tweet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tweet-hs" or (errorHandler.buildDepError "tweet-hs"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.library then false else true;
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