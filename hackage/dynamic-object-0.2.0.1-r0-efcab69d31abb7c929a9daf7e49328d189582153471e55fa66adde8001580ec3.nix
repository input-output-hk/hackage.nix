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
      identifier = { name = "dynamic-object"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "";
      url = "";
      synopsis = "Object-oriented programming with duck typing and\nsingleton classes.";
      description = "This package aims to combine the merit of Haskell's open, strong type system\nwith flexible Object-oriented programming\nfound in dynamically-typed languages such as\npython or ruby.\n\n@Object@s are implemented as @Map@s from method keys\nto values. Each key specifies its own value types.\nYou can add new members at runtime, for any instances of the object (singleton class).\nAt the same time, you have typed and runtime-error-free access to the members (duck typing).\n\nSee @Data.Object.Dynamic.Examples.PointParticle@ for examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."dynamic-object" or (errorHandler.buildDepError "dynamic-object"))
            ];
          buildable = true;
          };
        };
      };
    }