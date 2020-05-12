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
      identifier = { name = "QuickCheckVariant"; version = "0.1.0.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sanjorgek@ciencias.unam.mx";
      author = "Jorge Santiago Alvarez Cuadros";
      homepage = "https://github.com/sanjorgek/QuickCheckVariant";
      url = "";
      synopsis = "Generator of \"valid\" and \"invalid\" data in a type class";
      description = "Generator of \"valid\" and \"invalid\" data in a type class";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }