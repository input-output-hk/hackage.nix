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
      identifier = { name = "valor"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) Luka Hadžiegrić 2021";
      maintainer = "luka@mastarija.com";
      author = "Luka Hadžiegrić";
      homepage = "https://github.com/mastarija/valor#readme";
      url = "";
      synopsis = "Simple and powerful data validation";
      description = "Simple and powerful data validation library with\nApplicative and Monad interface. Great for constructing\nstructured errors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."valor".components.sublibs.int or (errorHandler.buildDepError "valor:int"))
          ];
        buildable = true;
        };
      sublibs = {
        "int" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."valor".components.sublibs.int or (errorHandler.buildDepError "valor:int"))
            (hsPkgs."valor" or (errorHandler.buildDepError "valor"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        "docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }