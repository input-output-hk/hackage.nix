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
      identifier = { name = "typed-encoding-encoding"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Robert Peszek";
      maintainer = "robpeszek@gmail.com";
      author = "Robert Peszek";
      homepage = "https://github.com/rpeszek/typed-encoding-encoding#readme";
      url = "";
      synopsis = "Bridge between encoding and typed-encoding packages";
      description = "Please see the README on GitHub at <https://github.com/rpeszek/typed-encoding-encoding#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."encoding" or (errorHandler.buildDepError "encoding"))
          (hsPkgs."typed-encoding" or (errorHandler.buildDepError "typed-encoding"))
        ];
        buildable = true;
      };
      tests = {
        "typed-encoding-encoding-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."encoding" or (errorHandler.buildDepError "encoding"))
            (hsPkgs."typed-encoding" or (errorHandler.buildDepError "typed-encoding"))
          ];
          buildable = true;
        };
        "typed-encoding-encoding-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."encoding" or (errorHandler.buildDepError "encoding"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."typed-encoding" or (errorHandler.buildDepError "typed-encoding"))
            (hsPkgs."typed-encoding-encoding" or (errorHandler.buildDepError "typed-encoding-encoding"))
          ];
          buildable = true;
        };
      };
    };
  }