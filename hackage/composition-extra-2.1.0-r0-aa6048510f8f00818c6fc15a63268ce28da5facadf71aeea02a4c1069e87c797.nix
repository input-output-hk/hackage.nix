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
      identifier = { name = "composition-extra"; version = "2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "";
      url = "";
      synopsis = "Combinators for unorthodox structure composition";
      description = "Increase the unreadability of your code through operators";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          ];
        buildable = true;
        };
      };
    }