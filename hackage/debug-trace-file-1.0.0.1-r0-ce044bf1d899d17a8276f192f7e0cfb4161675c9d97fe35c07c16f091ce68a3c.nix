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
      identifier = { name = "debug-trace-file"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "i@ak3n.com";
      author = "Evgenii Akentev";
      homepage = "";
      url = "";
      synopsis = "Like Debug.Trace but writing to files.";
      description = "Debug.Trace like functions to trace to files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "debug-trace-file-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."debug-trace-file" or (errorHandler.buildDepError "debug-trace-file"))
            ];
          buildable = true;
          };
        };
      };
    }