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
      specVersion = "1.6";
      identifier = { name = "chalmers-lava2000"; version = "1.6"; };
      license = "BSD-3-Clause";
      copyright = "2008 Koen Claessen, 2008-2015 Emil Axelsson";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "http://projects.haskell.org/chalmers-lava2000/Doc/tutorial.pdf";
      url = "";
      synopsis = "Hardware description EDSL";
      description = "For more info, see the tutorial: <http://projects.haskell.org/chalmers-lava2000/Doc/tutorial.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }