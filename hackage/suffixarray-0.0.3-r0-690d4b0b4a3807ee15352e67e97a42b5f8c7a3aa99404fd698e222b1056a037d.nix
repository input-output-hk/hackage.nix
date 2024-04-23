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
      specVersion = "1.4";
      identifier = { name = "suffixarray"; version = "0.0.3"; };
      license = "GPL-2.0-only";
      copyright = "2010 Daniël de Kok, 2012 Victor Denisov";
      maintainer = "Victor Denisov <denisovenator@gmail.com>";
      author = "Daniël de Kok <me@danieldk.eu>, Victor Denisov <denisovenator@gmail.com>";
      homepage = "https://github.com/VictorDenisov/suffixarray";
      url = "";
      synopsis = "n log n implementation of suffix array.";
      description = "n log n implementation of suffix array.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "runTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
        "benchmark" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }