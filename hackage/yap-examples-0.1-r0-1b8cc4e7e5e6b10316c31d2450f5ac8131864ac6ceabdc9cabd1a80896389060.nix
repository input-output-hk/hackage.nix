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
      identifier = { name = "yap-examples"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <R.Paterson@city.ac.uk>";
      author = "Ross Paterson <R.Paterson@city.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "examples of the algebraic classes in the yap package";
      description = "Example instances of the algebraic classes in the @yap@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."yap" or (errorHandler.buildDepError "yap"))
        ];
        buildable = true;
      };
      tests = {
        "test-clifford-inverse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."yap" or (errorHandler.buildDepError "yap"))
            (hsPkgs."yap-examples" or (errorHandler.buildDepError "yap-examples"))
          ];
          buildable = true;
        };
        "test-power-series" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."yap" or (errorHandler.buildDepError "yap"))
            (hsPkgs."yap-examples" or (errorHandler.buildDepError "yap-examples"))
          ];
          buildable = true;
        };
        "test-weyl-algebra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."yap" or (errorHandler.buildDepError "yap"))
            (hsPkgs."yap-examples" or (errorHandler.buildDepError "yap-examples"))
          ];
          buildable = true;
        };
        "euclidean-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yap" or (errorHandler.buildDepError "yap"))
            (hsPkgs."yap-examples" or (errorHandler.buildDepError "yap-examples"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }