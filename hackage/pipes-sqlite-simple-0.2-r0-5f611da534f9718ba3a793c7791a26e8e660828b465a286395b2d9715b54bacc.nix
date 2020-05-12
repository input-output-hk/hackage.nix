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
      identifier = { name = "pipes-sqlite-simple"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "";
      url = "";
      synopsis = "Functions that smash Pipes and sqlite-simple together";
      description = "Functions that smash Pipes and sqlite-simple together";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          ];
        buildable = true;
        };
      };
    }