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
      specVersion = "1.8";
      identifier = { name = "despair"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heather Cynede <Heather@live.ru>";
      author = "Heather Cynede";
      homepage = "";
      url = "";
      synopsis = "Despair";
      description = "Despair";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }