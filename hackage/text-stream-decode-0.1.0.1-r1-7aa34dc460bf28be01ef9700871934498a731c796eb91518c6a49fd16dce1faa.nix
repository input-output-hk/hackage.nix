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
    flags = { text11 = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "text-stream-decode"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/fpco/text-stream-decode";
      url = "";
      synopsis = "Streaming decoding functions for UTF encodings.";
      description = "The @text@ package provides high performance functions for decoding strict and lazy @ByteString@s into @Text@. However, these functions present two issues for streaming data libraries: they throw exceptions from pure code, and are not designed for incremental consumption. This library addresses both issues with a unified API for UTF-8, -16LE, -16BE, -32LE, and -32BE. It is intended for use by high level streaming data libraries, such as conduit, enumerator, iteratee, and pipes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ [ (hsPkgs."text" or (errorHandler.buildDepError "text")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text-stream-decode" or (errorHandler.buildDepError "text-stream-decode"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "count-chars" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text-stream-decode" or (errorHandler.buildDepError "text-stream-decode"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }