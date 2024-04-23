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
      identifier = { name = "keyed-vals-hspec-tests"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/keyed-vals#readme";
      url = "";
      synopsis = "Validate a keyed-vals Handle";
      description = "Provides a Hspec fixture for testing implementations of the abstract\nHandle defined in the keyed-vals package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."keyed-vals" or (errorHandler.buildDepError "keyed-vals"))
          (hsPkgs."benri-hspec" or (errorHandler.buildDepError "benri-hspec"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
        ];
        buildable = true;
      };
    };
  }