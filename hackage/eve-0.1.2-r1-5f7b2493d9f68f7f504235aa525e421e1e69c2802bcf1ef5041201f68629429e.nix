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
      identifier = { name = "eve"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/eve#readme";
      url = "";
      synopsis = "An extensible event framework";
      description = "An extensible event-driven application framework in haskell for building embarassingly modular software.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "eve-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eve" or (errorHandler.buildDepError "eve"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      };
    }