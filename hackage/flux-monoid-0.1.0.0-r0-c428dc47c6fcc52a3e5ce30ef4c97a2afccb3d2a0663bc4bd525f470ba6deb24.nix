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
      identifier = { name = "flux-monoid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Chris Penner";
      maintainer = "";
      author = "Chris Penner";
      homepage = "https://github.com/githubuser/flux-monoid#readme";
      url = "";
      synopsis = "A monoid for tracking changes";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }