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
    flags = { build-the-readme = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "benri-hspec"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/benri-hspec#readme";
      url = "";
      synopsis = "Simplify tests where Either or Maybe types are returned from monadic code";
      description = "A small library of __convenient__ functions for writing hspec tests.\n\nIt's simplifies test code that returns `Either` or `Maybe` types from monadic code.\n\nThe [README](https://github.com/adetokunbo/benri-hspec#readme) provides usage examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
        ];
        buildable = true;
      };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."benri-hspec" or (errorHandler.buildDepError "benri-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = if system.isWindows || !flags.build-the-readme
            then false
            else true;
        };
      };
    };
  }