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
      identifier = { name = "simplistic-generics"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Generic programming without too many type classes";
      description = "This library provides a representation build on top of\n`GHC.Generics`, which can be used to describe generic\noperations on a single function, instead of having\neach case defined in an instance of a type class.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kind-apply" or (errorHandler.buildDepError "kind-apply"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          ];
        buildable = true;
        };
      };
    }