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
      identifier = { name = "qualified-imports-plugin"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Utku Demir";
      maintainer = "Utku Demir";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/qualified-imports-plugin";
      url = "";
      synopsis = "GHC plugin to automatically insert qualified imports";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qualified-imports-plugin" or (errorHandler.buildDepError "qualified-imports-plugin"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }