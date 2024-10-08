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
      specVersion = "2.4";
      identifier = { name = "drama"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Evan Relf";
      maintainer = "Evan Relf <evan@evanrelf.com>";
      author = "Evan Relf <evan@evanrelf.com>";
      homepage = "https://github.com/evanrelf/drama";
      url = "";
      synopsis = "Actor library for Haskell";
      description = "Actor library for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
        ];
        buildable = true;
      };
      exes = {
        "example-shared-resource" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."drama" or (errorHandler.buildDepError "drama"))
          ];
          buildable = true;
        };
        "example-use" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."drama" or (errorHandler.buildDepError "drama"))
          ];
          buildable = true;
        };
      };
    };
  }