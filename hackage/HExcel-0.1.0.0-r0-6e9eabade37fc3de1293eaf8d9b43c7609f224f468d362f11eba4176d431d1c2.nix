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
      specVersion = "1.12";
      identifier = { name = "HExcel"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sasa.bogicevic@pm.me";
      author = "Sasha Bogicevic";
      homepage = "";
      url = "";
      synopsis = "Create Excel files with Haskell";
      description = "Easily create Excel files with Haskell. See README at <https://github.com/green-lambda/HExcel>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        libs = [
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."xlsxwriter" or (errorHandler.sysDepError "xlsxwriter"))
          ];
        buildable = true;
        };
      };
    }