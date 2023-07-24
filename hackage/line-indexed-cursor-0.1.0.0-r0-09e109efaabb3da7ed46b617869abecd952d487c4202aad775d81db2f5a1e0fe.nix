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
      identifier = { name = "line-indexed-cursor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "i@ak3n.com";
      author = "Evgenii Akentev";
      homepage = "";
      url = "";
      synopsis = "Line-indexed file reader.";
      description = "Lazily builds the index with the line numbers while reading the file making it possible to rewind to them quickly later.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "line-indexed-cursor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."line-indexed-cursor" or (errorHandler.buildDepError "line-indexed-cursor"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."line-indexed-cursor" or (errorHandler.buildDepError "line-indexed-cursor"))
            ];
          buildable = true;
          };
        };
      };
    }