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
      identifier = { name = "exceptionfree-readfile"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 vados";
      maintainer = "vados@vadosware.io";
      author = "vados";
      homepage = "https://gitlab.com/mrman/haskell-exceptionfree-readfile#readme";
      url = "";
      synopsis = "An exception-free readFile for use with '+RTS -xc -RTS' projects";
      description = "Please see the README on Gitlab at <https://gitlab.com/mrman/haskell-exceptionfree-readfile#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptionfree-readfile" or (errorHandler.buildDepError "exceptionfree-readfile"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
        "e2e" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptionfree-readfile" or (errorHandler.buildDepError "exceptionfree-readfile"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptionfree-readfile" or (errorHandler.buildDepError "exceptionfree-readfile"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }