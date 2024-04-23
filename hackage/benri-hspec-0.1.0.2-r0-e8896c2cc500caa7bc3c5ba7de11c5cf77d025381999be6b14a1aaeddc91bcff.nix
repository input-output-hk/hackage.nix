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
    flags = { build-the-readme = false; use-doc-tests = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "benri-hspec"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/benri-hspec#readme";
      url = "";
      synopsis = "Simplify tests where Either or Maybe types are returned from monadic code";
      description = "A small library of __convenient__ functions for writing hspec tests.\n\nIt simplifies tests where `Either`, `Maybe` and other types are returned from\nmonadic code.\n\nThe [README](https://github.com/adetokunbo/benri-hspec#readme) provides usage examples.";
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
            (hsPkgs.buildPackages.markdown-unlit.components.exes.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = if system.isWindows || !flags.build-the-readme
            then false
            else true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."benri-hspec" or (errorHandler.buildDepError "benri-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = if flags.use-doc-tests then true else false;
        };
      };
    };
  }