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
      identifier = { name = "datastar-hs-zstd"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "carlo@carlo-hamalainen.net";
      author = "Carlo Hamalainen";
      homepage = "https://github.com/starfederation/datastar-haskell";
      url = "";
      synopsis = "zstd compressor for datastar-hs";
      description = "@zstd@ @Content-Encoding@ compressor for\n<https://hackage.haskell.org/package/datastar-hs datastar-hs> SSE streams.\n.\nNo system library needed: the <https://hackage.haskell.org/package/zstd zstd>\npackage bundles the zstd C sources by default (its @standalone@ flag).\nRequires @zstd >= 0.1.4@ for the streaming @flushStream@ binding.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."datastar-hs" or (errorHandler.buildDepError "datastar-hs"))
          (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
        ];
        buildable = true;
      };
      tests = {
        "datastar-hs-zstd-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."datastar-hs" or (errorHandler.buildDepError "datastar-hs"))
            (hsPkgs."datastar-hs-zlib" or (errorHandler.buildDepError "datastar-hs-zlib"))
            (hsPkgs."datastar-hs-zstd" or (errorHandler.buildDepError "datastar-hs-zstd"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."zstd" or (errorHandler.buildDepError "zstd"))
          ];
          buildable = true;
        };
      };
    };
  }