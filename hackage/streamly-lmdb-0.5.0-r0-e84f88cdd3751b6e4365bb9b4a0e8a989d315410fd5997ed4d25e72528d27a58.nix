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
      identifier = { name = "streamly-lmdb"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Shlok Datye";
      maintainer = "sd-haskell@quant.is";
      author = "Shlok Datye";
      homepage = "https://github.com/shlok/streamly-lmdb#readme";
      url = "";
      synopsis = "Stream data to or from LMDB databases using the streamly library.";
      description = "Please see the README on GitHub at <https://github.com/shlok/streamly-lmdb#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
        ];
        libs = [ (pkgs."lmdb" or (errorHandler.sysDepError "lmdb")) ];
        buildable = true;
      };
      tests = {
        "streamly-lmdb-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streamly-lmdb" or (errorHandler.buildDepError "streamly-lmdb"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          libs = [ (pkgs."lmdb" or (errorHandler.sysDepError "lmdb")) ];
          buildable = true;
        };
      };
    };
  }