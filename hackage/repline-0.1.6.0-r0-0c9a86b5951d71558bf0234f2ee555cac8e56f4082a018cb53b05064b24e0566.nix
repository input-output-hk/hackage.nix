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
      identifier = { name = "repline"; version = "0.1.6.0"; };
      license = "MIT";
      copyright = "2014-2017 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/sdiehl/repline";
      url = "";
      synopsis = "Haskeline wrapper for GHCi-like REPL interfaces.";
      description = "Haskeline wrapper for GHCi-like REPL interfaces. Composable with normal mtl transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          ];
        buildable = true;
        };
      exes = {
        "Simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."repline" or (errorHandler.buildDepError "repline"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."repline" or (errorHandler.buildDepError "repline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }