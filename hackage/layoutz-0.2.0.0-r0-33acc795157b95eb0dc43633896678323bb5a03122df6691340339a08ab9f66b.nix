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
      identifier = { name = "layoutz"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "2025 Matthieu Court";
      maintainer = "matthieu.court@protonmail.com";
      author = "Matthieu Court";
      homepage = "https://github.com/mattlianje/layoutz";
      url = "";
      synopsis = "Simple, beautiful CLI output for Haskell";
      description = "Build declarative and composable sections, trees, tables, dashboards, and interactive Elm-style TUI's.\n.\nZero dependencies, rich text formatting with alignment, underlines, padding, margins.\nFeatures lists, trees, tables, charts, spinners, ANSI colors, and a built-in TUI runtime.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "layoutz-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."layoutz" or (errorHandler.buildDepError "layoutz"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }