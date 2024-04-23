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
      specVersion = "1.24";
      identifier = { name = "symantic-base"; version = "0.0.1.20200708"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      author = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      homepage = "";
      url = "";
      synopsis = "Basic symantics for writing Embedded Domain-Specific Languages (EDSL).";
      description = "A collection of basic tagless-final combinators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }