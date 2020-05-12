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
      identifier = { name = "list-transformer"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "https://github.com/Gabriel439/Haskell-List-Transformer-Library";
      url = "";
      synopsis = "List monad transformer";
      description = "This library provides a list monad transformer that\nenriches lists with effects and streams efficiently in\nconstant space.\n\nThis library also has an extensive tutorial in the\n\"List.Transformer\" module which explains the motivation\nbehind this type and how to use the type fluently.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."list-transformer" or (errorHandler.buildDepError "list-transformer"))
            ];
          buildable = true;
          };
        };
      };
    }