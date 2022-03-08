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
    flags = { fusion-plugin = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly-lz4"; version = "0.1.2"; };
      license = "Apache-2.0";
      copyright = "2020 Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://github.com/composewell/streamly-lz4";
      url = "";
      synopsis = "Streamly combinators for LZ4 compression";
      description = "Compress and decompress streams of data using LZ4 compression.  See\n<https://github.com/lz4/lz4> .";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fusion-plugin-types" or (errorHandler.buildDepError "fusion-plugin-types"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          ];
        buildable = true;
        };
      tests = {
        "test-lz4" = {
          depends = [
            (hsPkgs."streamly-lz4" or (errorHandler.buildDepError "streamly-lz4"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-lz4" = {
          depends = [
            (hsPkgs."streamly-lz4" or (errorHandler.buildDepError "streamly-lz4"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"));
          buildable = true;
          };
        };
      };
    }