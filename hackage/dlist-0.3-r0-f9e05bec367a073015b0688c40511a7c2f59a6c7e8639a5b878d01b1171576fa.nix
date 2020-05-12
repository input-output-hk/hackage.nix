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
      specVersion = "0";
      identifier = { name = "dlist"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart ";
      homepage = "http://www.cse.unsw.edu.au/~dons/dlist.html";
      url = "";
      synopsis = "Differences lists";
      description = "Differences lists: a list-like type supporting O(1) append";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }