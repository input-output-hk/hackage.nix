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
      specVersion = "1.12";
      identifier = { name = "resourcet-pool"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brandon Chinn <brandonchinn178@gmail.com>";
      author = "";
      homepage = "https://github.com/brandonchinn178/resourcet-pool#readme";
      url = "";
      synopsis = "A small library to convert a Pool into an Acquire";
      description = "A small library to convert a Pool into an Acquire, allowing\none to use the `resourcet` framework with a resource exported\nas a `Pool`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }