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
      specVersion = "1.2";
      identifier = { name = "spata"; version = "2009.9.18"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/spata/tree/master";
      url = "";
      synopsis = "bruteforce form validation";
      description = "who needs a brain when it can be solved with fists";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mps" or (errorHandler.buildDepError "mps"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ];
        buildable = true;
        };
      };
    }