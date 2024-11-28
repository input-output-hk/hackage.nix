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
      identifier = { name = "constrained-some"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "© 2024 Julian Bruder";
      maintainer = "julian.bruder@outlook.com";
      author = "Julian Bruder";
      homepage = "https://github.com/bruderj15/constrained-some";
      url = "";
      synopsis = "Existential type that can be constrained";
      description = "This library provides utilities for working with existential types and type-level constraints.\nIt allows you to enforce multiple constraints on polymorphic types and containers complementing the package some.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "constrained-some-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constrained-some" or (errorHandler.buildDepError "constrained-some"))
          ];
          buildable = true;
        };
      };
    };
  }