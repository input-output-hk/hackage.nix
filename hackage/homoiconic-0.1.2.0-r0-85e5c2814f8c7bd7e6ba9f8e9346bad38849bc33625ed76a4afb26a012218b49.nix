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
      identifier = { name = "homoiconic"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "github.com/mikeizbicki/homoiconic";
      url = "";
      synopsis = "Constructs FAlgebras from typeclasses, making Haskell functions homoiconic";
      description = "This library lets you automatically create FAlgebras for many type classes. From these FAlgebras and the free monad, we can generate abstract syntax trees for the type class. This lets us make many functions homoiconic.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "Homogeneous" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."homoiconic" or (errorHandler.buildDepError "homoiconic"))
          ];
          buildable = true;
        };
        "Heterogeneous" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."homoiconic" or (errorHandler.buildDepError "homoiconic"))
          ];
          buildable = true;
        };
        "Constrained" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."homoiconic" or (errorHandler.buildDepError "homoiconic"))
          ];
          buildable = true;
        };
      };
    };
  }