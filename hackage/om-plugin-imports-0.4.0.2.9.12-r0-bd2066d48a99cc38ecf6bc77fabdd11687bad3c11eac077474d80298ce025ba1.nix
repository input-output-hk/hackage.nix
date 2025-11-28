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
      identifier = { name = "om-plugin-imports"; version = "0.4.0.2.9.12"; };
      license = "MIT";
      copyright = "2025 Rick Owens";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/om-plugin-imports";
      url = "";
      synopsis = "Plugin-based explicit import generation.";
      description = "See the README at https://github.com/owensmurray/om-plugin-imports/tree/master/#om-plugin-imports";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "om-plugin-imports-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."om-plugin-imports" or (errorHandler.buildDepError "om-plugin-imports"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }