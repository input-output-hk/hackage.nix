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
      identifier = { name = "souffle-haskell"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2019 Luc Tielen";
      maintainer = "luc.tielen@gmail.com";
      author = "Luc Tielen";
      homepage = "https://github.com/luc-tielen/souffle-haskell#README.md";
      url = "";
      synopsis = "Souffle Datalog bindings for Haskell";
      description = "Souffle Datalog bindings for Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."type-errors-pretty" or (errorHandler.buildDepError "type-errors-pretty"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.souffle.components.exes.souffle or (pkgs.pkgsBuildBuild.souffle or (errorHandler.buildToolDepError "souffle:souffle")))
        ];
        buildable = true;
      };
      tests = {
        "souffle-haskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."souffle-haskell" or (errorHandler.buildDepError "souffle-haskell"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."type-errors-pretty" or (errorHandler.buildDepError "type-errors-pretty"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          libs = [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.souffle.components.exes.souffle or (pkgs.pkgsBuildBuild.souffle or (errorHandler.buildToolDepError "souffle:souffle")))
          ];
          buildable = true;
        };
      };
    };
  }