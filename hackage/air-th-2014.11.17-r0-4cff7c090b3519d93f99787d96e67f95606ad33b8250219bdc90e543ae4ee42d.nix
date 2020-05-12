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
      identifier = { name = "air-th"; version = "2014.11.17"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/air-th";
      url = "";
      synopsis = "air";
      description = "Template Haskell helpers for air";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."air" or (errorHandler.buildDepError "air"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }