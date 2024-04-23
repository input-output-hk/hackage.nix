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
      identifier = { name = "binary-store"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.casanueva@plowtech.net";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Format to store data using the binary transform.";
      description = "...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary-list" or (errorHandler.buildDepError "binary-list"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."reinterpret-cast" or (errorHandler.buildDepError "reinterpret-cast"))
          (hsPkgs."binary-transform" or (errorHandler.buildDepError "binary-transform"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "binary-store-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."binary-list" or (errorHandler.buildDepError "binary-list"))
            (hsPkgs."binary-store" or (errorHandler.buildDepError "binary-store"))
          ];
          buildable = true;
        };
      };
    };
  }