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
    flags = { unliftio = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "haskus-utils-variant"; version = "3.5"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2020";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "https://www.haskus.org";
      url = "";
      synopsis = "Variant and EADT";
      description = "Variant (extensible sum type) and EADT (extensible recursive sum type)\ndatatypes. Documentation can be found at https://docs.haskus.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskus-utils-types" or (errorHandler.buildDepError "haskus-utils-types"))
          (hsPkgs."haskus-utils-data" or (errorHandler.buildDepError "haskus-utils-data"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ pkgs.lib.optional (flags.unliftio) (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskus-utils-variant" or (errorHandler.buildDepError "haskus-utils-variant"))
            (hsPkgs."haskus-utils-types" or (errorHandler.buildDepError "haskus-utils-types"))
            (hsPkgs."haskus-utils-data" or (errorHandler.buildDepError "haskus-utils-data"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskus-utils-variant" or (errorHandler.buildDepError "haskus-utils-variant"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }