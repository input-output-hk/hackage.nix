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
      identifier = { name = "defaultable-map"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2022 Gabriella Gonzalez";
      maintainer = "GenuineGabriella@gmail.com";
      author = "Gabriella Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Applicative maps";
      description = "This package provides a `Defaultable` type constructor that\nwraps any `Map`-like type to add an optional default value. \nWrapping a `Map`-like type in this way permits a valid\n`Applicative` instance, so you can think of this as an\n\"`Applicative` map\" package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      };
    }