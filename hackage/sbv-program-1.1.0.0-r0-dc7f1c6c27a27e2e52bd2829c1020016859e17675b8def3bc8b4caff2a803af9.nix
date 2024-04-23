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
      identifier = { name = "sbv-program"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Gleb Popov";
      maintainer = "6yearold@gmail.com";
      author = "Gleb Popov";
      homepage = "https://github.com/arrowd/sbv-program";
      url = "";
      synopsis = "Component-based program synthesis using SBV";
      description = "Given a library of available componen functions, synthesize a program implementing a specification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
        ];
        buildable = true;
      };
      tests = {
        "smoketest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
            (hsPkgs."sbv-program" or (errorHandler.buildDepError "sbv-program"))
          ];
          buildable = true;
        };
      };
    };
  }