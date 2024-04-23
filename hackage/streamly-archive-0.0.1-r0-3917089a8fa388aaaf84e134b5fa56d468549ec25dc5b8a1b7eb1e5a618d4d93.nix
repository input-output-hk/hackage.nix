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
      identifier = { name = "streamly-archive"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Shlok Datye";
      maintainer = "sd-haskell@quant.is";
      author = "Shlok Datye";
      homepage = "https://github.com/shlok/streamly-archive#readme";
      url = "";
      synopsis = "Stream data from archives using the streamly library.";
      description = "Please see the README on GitHub at <https://github.com/shlok/streamly-archive#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
        ];
        libs = [ (pkgs."archive" or (errorHandler.sysDepError "archive")) ];
        buildable = true;
      };
      tests = {
        "streamly-archive-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streamly-archive" or (errorHandler.buildDepError "streamly-archive"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          libs = [ (pkgs."archive" or (errorHandler.sysDepError "archive")) ];
          buildable = true;
        };
      };
    };
  }