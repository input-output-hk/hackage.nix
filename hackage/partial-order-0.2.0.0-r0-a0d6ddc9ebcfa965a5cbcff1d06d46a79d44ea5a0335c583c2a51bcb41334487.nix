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
    flags = { extra-instances = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "partial-order"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2020 Moritz Clasmeier";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Clasmeier";
      homepage = "https://github.com/mtesseract/haskell-partial-order";
      url = "";
      synopsis = "Provides typeclass suitable for types admitting a partial order";
      description = "This packages provides the PartialOrd typeclass suitable for\ntypes admitting a partial order.\nThe only module exposed by this package is\nData.PartialOrd. Along with the PartialOrd\ntypeclass and some utility functions for working\nwith partially ordered types, it exports\ninstances for certain numeric types along with\ninstances for lists and sets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (flags.extra-instances) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
        buildable = true;
        };
      tests = {
        "partial-order-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."partial-order" or (errorHandler.buildDepError "partial-order"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ] ++ (pkgs.lib).optional (flags.extra-instances) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
          buildable = true;
          };
        };
      };
    }