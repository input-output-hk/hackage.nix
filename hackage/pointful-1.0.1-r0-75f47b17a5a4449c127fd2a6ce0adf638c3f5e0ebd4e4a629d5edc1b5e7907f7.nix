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
      specVersion = "1.0";
      identifier = { name = "pointful"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "the.dead.shall.rise@gmail.com";
      author = "Mikhail Glushenkov";
      homepage = "";
      url = "";
      synopsis = "Pointful refactoring tool";
      description = "Stand-alone command-line version of the pointful plugin\nfor lambdabot.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pointful" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }