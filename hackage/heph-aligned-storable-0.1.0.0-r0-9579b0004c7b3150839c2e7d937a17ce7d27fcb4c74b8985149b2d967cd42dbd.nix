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
      specVersion = "2.2";
      identifier = { name = "heph-aligned-storable"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Jeremy Nuttall";
      maintainer = "jeremy@jeremy-nuttall.com";
      author = "Jeremy Nuttall";
      homepage = "https://github.com/jtnuttall/heph/tree/main/heph-aligned-storable#readme";
      url = "";
      synopsis = "Generically derive Storable instances suitable for CPU-GPU transfer";
      description = "Please see the README on GitHub at <https://github.com/jtnuttall/heph/tree/main/heph-aligned-storable#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."half" or (errorHandler.buildDepError "half"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ];
        buildable = true;
      };
      tests = {
        "heph-aligned-storable-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."half" or (errorHandler.buildDepError "half"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."heph-aligned-storable" or (errorHandler.buildDepError "heph-aligned-storable"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-inspection-testing" or (errorHandler.buildDepError "tasty-inspection-testing"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
          buildable = true;
        };
      };
    };
  }