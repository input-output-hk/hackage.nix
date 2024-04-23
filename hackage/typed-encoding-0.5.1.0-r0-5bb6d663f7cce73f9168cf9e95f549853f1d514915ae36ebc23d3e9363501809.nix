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
      specVersion = "1.12";
      identifier = { name = "typed-encoding"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Robert Peszek";
      maintainer = "robpeszek@gmail.com";
      author = "Robert Peszek";
      homepage = "https://github.com/rpeszek/typed-encoding#readme";
      url = "";
      synopsis = "Type safe string transformations";
      description = "See README.md in the project github repository.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."symbols" or (errorHandler.buildDepError "symbols"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "typed-encoding-doctest" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."symbols" or (errorHandler.buildDepError "symbols"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-encoding" or (errorHandler.buildDepError "typed-encoding"))
          ];
          buildable = true;
        };
        "typed-encoding-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."symbols" or (errorHandler.buildDepError "symbols"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-encoding" or (errorHandler.buildDepError "typed-encoding"))
          ];
          buildable = true;
        };
      };
    };
  }