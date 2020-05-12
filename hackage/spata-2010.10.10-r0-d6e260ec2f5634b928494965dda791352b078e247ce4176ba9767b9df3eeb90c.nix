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
      identifier = { name = "spata"; version = "2010.10.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/spata";
      url = "";
      synopsis = "brainless form validation";
      description = "tiny validation library";
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