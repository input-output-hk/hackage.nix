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
      specVersion = "1.14";
      identifier = { name = "hydrogen-data"; version = "0.14"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-data/";
      url = "";
      synopsis = "Hydrogen Data";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hydrogen-prelude" or (errorHandler.buildDepError "hydrogen-prelude"))
          (hsPkgs."hydrogen-parsing" or (errorHandler.buildDepError "hydrogen-parsing"))
          ];
        buildable = true;
        };
      };
    }