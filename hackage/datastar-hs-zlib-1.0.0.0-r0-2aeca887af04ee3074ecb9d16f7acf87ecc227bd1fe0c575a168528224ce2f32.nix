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
      identifier = { name = "datastar-hs-zlib"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "carlo@carlo-hamalainen.net";
      author = "Carlo Hamalainen";
      homepage = "https://github.com/starfederation/datastar-haskell";
      url = "";
      synopsis = "gzip and deflate compressors for datastar-hs";
      description = "@gzip@ and @deflate@ @Content-Encoding@ compressors for\n<https://hackage.haskell.org/package/datastar-hs datastar-hs> SSE streams.\n.\nLinks against the system zlib C library. On macOS the headers ship with the\nXcode Command Line Tools; on Debian/Ubuntu install @zlib1g-dev@. To build\nwith no system library at all, add the constraint @zlib +bundled-c-zlib@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."datastar-hs" or (errorHandler.buildDepError "datastar-hs"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
        ];
        buildable = true;
      };
      tests = {
        "datastar-hs-zlib-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."datastar-hs" or (errorHandler.buildDepError "datastar-hs"))
            (hsPkgs."datastar-hs-zlib" or (errorHandler.buildDepError "datastar-hs-zlib"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
      };
    };
  }