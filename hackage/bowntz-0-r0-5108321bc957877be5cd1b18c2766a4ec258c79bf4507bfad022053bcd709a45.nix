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
      identifier = { name = "bowntz"; version = "0"; };
      license = "GPL-3.0-only";
      copyright = "2010,2013,2015 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "http://code.mathr.co.uk/bowntz";
      url = "";
      synopsis = "audio-visual pseudo-physical simulation of colliding circles";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bowntz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }