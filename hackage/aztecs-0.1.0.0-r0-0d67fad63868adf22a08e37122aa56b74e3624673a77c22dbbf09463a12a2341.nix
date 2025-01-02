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
      identifier = { name = "aztecs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "";
      url = "";
      synopsis = "A type-safe and friendly ECS for Haskell ";
      description = "A type-safe and friendly ECS for Haskell \nexposed-modules:\n    Data.Aztecs\n    Data.Aztecs.Core\n    Data.Aztecs.Command\n    Data.Aztecs.Schedule\n    Data.Aztecs.System\n    Data.Aztecs.Storage\n    Data.Aztecs.Task\n    Data.Aztecs.Query\n    Data.Aztecs.World\n    Data.Aztecs.World.Archetypes\n    Data.Aztecs.World.Components\n\nhs-source-dirs:   src\ndefault-language: Haskell2010\nghc-options:      -Wall\nbuild-depends:\n    base >=4 && <5,\n    async >=2,\n    containers >=0.7,\n    mtl >=2";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ecs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "aztecs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "aztecs-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }