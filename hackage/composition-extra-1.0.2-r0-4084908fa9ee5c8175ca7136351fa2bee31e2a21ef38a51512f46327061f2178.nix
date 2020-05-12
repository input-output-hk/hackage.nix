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
      identifier = { name = "composition-extra"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "";
      url = "";
      synopsis = "Combinators for unorthodox structure composition";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          ];
        buildable = true;
        };
      };
    }