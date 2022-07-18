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
      specVersion = "2.2";
      identifier = { name = "drama"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Evan Relf";
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
          (hsPkgs."ki-unlifted" or (errorHandler.buildDepError "ki-unlifted"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
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