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
      identifier = { name = "hakyll-sass"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "vc@braden-walters.info";
      author = "Braden Walters";
      homepage = "https://github.com/meoblast001/hakyll-sass";
      url = "";
      synopsis = "Hakyll SASS compiler over hsass";
      description = "Hakyll compiler which indirectly uses libsass to compile SASS and SCSS to CSS.\nThe Ruby SASS compiler is not required.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."hsass" or (errorHandler.buildDepError "hsass"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }