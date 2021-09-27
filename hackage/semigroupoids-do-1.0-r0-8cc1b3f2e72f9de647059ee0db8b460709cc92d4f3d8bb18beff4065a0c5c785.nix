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
      specVersion = "3.0";
      identifier = { name = "semigroupoids-do"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "(C) Koz Ross 2021";
      maintainer = "koz.ross@retro-freedom.nz";
      author = "Koz Ross";
      homepage = "https://github.com/kozross/semigroupoids-do";
      url = "";
      synopsis = "Support for QualifiedDo with semigroupoids classes.";
      description = "Provides support for QualifiedDo using the more generalized type classes from\nthe semigroupoids package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      };
    }