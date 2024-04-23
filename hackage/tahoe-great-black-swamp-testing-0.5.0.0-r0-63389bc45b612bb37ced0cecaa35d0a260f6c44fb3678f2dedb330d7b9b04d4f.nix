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
      specVersion = "2.4";
      identifier = {
        name = "tahoe-great-black-swamp-testing";
        version = "0.5.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "exarkun@twistedmatrix.com";
      author = "Jean-Paul Calderone";
      homepage = "https://gitlab.com/tahoe-lafs/tahoe-great-black-swamp-testing";
      url = "";
      synopsis = "An HSpec for Great Black Swamp storage backends";
      description = "A library for creating test-suites for Tahoe-LAFS Great Black Swamp backend implementations";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base32string" or (errorHandler.buildDepError "base32string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-interval" or (errorHandler.buildDepError "data-interval"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."tahoe-great-black-swamp-types" or (errorHandler.buildDepError "tahoe-great-black-swamp-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
        ];
        buildable = true;
      };
    };
  }