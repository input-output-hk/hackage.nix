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
      specVersion = "2.4";
      identifier = { name = "gsmenu"; version = "3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/gsmenu";
      url = "";
      synopsis = "A visual generic menu";
      description = "Grid-oriented element selection inspired by XMonadContrib's GridSelect.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gsmenu" = {
          depends = [
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."sindre" or (errorHandler.buildDepError "sindre"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."permute" or (errorHandler.buildDepError "permute"))
            ];
          buildable = true;
          };
        };
      };
    }