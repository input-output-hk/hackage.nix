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
      identifier = { name = "clr-win-linker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Tim Matthews";
      maintainer = "tim.matthews7@gmail.com";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/utils/clr-win-linker";
      url = "";
      synopsis = "A GHC linker wrapper tool to workaround a GHC >8.2 bug";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clr-win-linker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }