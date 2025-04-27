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
      identifier = { name = "cpu-features"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 ARATA Mizuki";
      maintainer = "minorinoki@gmail.com";
      author = "ARATA Mizuki";
      homepage = "https://github.com/minoki/haskell-cpu-features";
      url = "";
      synopsis = "A library to detect CPU features";
      description = "This is a library to detect the features supported by the CPU running the Haskell program.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "cpu-features-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cpu-features" or (errorHandler.buildDepError "cpu-features"))
          ];
          buildable = true;
        };
      };
      tests = {
        "cpu-features-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cpu-features" or (errorHandler.buildDepError "cpu-features"))
          ];
          buildable = true;
        };
      };
    };
  }