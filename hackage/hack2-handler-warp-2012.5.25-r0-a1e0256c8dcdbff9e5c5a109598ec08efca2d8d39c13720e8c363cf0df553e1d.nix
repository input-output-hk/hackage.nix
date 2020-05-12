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
      identifier = { name = "hack2-handler-warp"; version = "2012.5.25"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/hack2-handler-warp";
      url = "";
      synopsis = "Hack2 warp handler";
      description = "Hack2 warp handler";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."hack2" or (errorHandler.buildDepError "hack2"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."air" or (errorHandler.buildDepError "air"))
          (hsPkgs."hack2-interface-wai" or (errorHandler.buildDepError "hack2-interface-wai"))
          ];
        buildable = true;
        };
      };
    }