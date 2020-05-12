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
      identifier = { name = "clr-bindings"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Tim Matthews";
      maintainer = "pepeiborra@gmail.com";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-bindings";
      url = "";
      synopsis = "Glue between clr-host and clr-typed";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clr-typed" or (errorHandler.buildDepError "clr-typed"))
          (hsPkgs."clr-host" or (errorHandler.buildDepError "clr-host"))
          (hsPkgs."clr-marshal" or (errorHandler.buildDepError "clr-marshal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          ];
        buildable = true;
        };
      tests = {
        "clr-bindings-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clr-bindings" or (errorHandler.buildDepError "clr-bindings"))
            ];
          buildable = true;
          };
        };
      };
    }