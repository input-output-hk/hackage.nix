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
      identifier = { name = "glirc"; version = "2.1"; };
      license = "ISC";
      copyright = "2016 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "";
      url = "";
      synopsis = "Console IRC client";
      description = "Console IRC client";
      buildType = "Custom";
    };
    components = {
      exes = {
        "glirc2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            (hsPkgs."config-value" or (errorHandler.buildDepError "config-value"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."x509-system" or (errorHandler.buildDepError "x509-system"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }