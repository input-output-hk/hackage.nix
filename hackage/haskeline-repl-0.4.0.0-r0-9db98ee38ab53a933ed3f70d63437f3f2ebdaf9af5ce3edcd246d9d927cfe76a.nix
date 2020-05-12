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
      identifier = { name = "haskeline-repl"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Rein van der Woerd";
      maintainer = "reinvanderwoerd@me.com";
      author = "Rein van der Woerd";
      homepage = "https://github.com/githubuser/haskeline-repl#readme";
      url = "";
      synopsis = "";
      description = "A convenient Haskeline wrapper";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      };
    }