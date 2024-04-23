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
      specVersion = "1.10";
      identifier = { name = "platinum-parsing"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017, Patrick Champion";
      maintainer = "chlablak@gmail.com";
      author = "chlablak";
      homepage = "https://github.com/chlablak/platinum-parsing";
      url = "";
      synopsis = "General Framework for compiler development.";
      description = "Platinum Parsing provides many tools for the development of compiler (including transpiler or interpreter), based on the well-known Dragon Book (2nd edition). This package is in progress, please take a look at the github repository for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      exes = {
        "pp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."platinum-parsing" or (errorHandler.buildDepError "platinum-parsing"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."data-hash" or (errorHandler.buildDepError "data-hash"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "pp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."platinum-parsing" or (errorHandler.buildDepError "platinum-parsing"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          ];
          buildable = true;
        };
      };
    };
  }