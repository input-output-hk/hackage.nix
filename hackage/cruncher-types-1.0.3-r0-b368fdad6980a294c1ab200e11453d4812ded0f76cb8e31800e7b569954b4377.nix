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
      specVersion = "1.18";
      identifier = { name = "cruncher-types"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2013 - Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "http://github.com/eval-so/cruncher-types";
      url = "";
      synopsis = "Request and Response types for Eval.so's API";
      description = "You are not likely to find this useful unless you are building a library for\naccessing Eval.so's new API, or working on the \"Cruncher\" backend.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = true;
        };
      };
    };
  }