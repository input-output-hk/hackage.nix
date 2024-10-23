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
      identifier = { name = "rawlock"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2024 INTERSECT";
      maintainer = "operations@iohk.io";
      author = "IOG Engineering Team";
      homepage = "";
      url = "";
      synopsis = "A writer-biased RAW lock.";
      description = "A writer-biased RAW lock.\n\nIt allows for multiple readers to run concurrently with at most one\nappender, or a single writer running on isolation.\n\nThe code is safe in the presence of async exceptions, meaning that each\nactor will cleanup after itself if an exception is received.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
          (hsPkgs."strict-mvar" or (errorHandler.buildDepError "strict-mvar"))
          (hsPkgs."strict-stm" or (errorHandler.buildDepError "strict-stm"))
        ];
        buildable = true;
      };
      tests = {
        "rawlock-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-sim" or (errorHandler.buildDepError "io-sim"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rawlock" or (errorHandler.buildDepError "rawlock"))
            (hsPkgs."strict-stm" or (errorHandler.buildDepError "strict-stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }