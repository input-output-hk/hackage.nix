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
      identifier = { name = "layoutz"; version = "0.3.1.0"; };
      license = "Apache-2.0";
      copyright = "2025 Matthieu Court";
      maintainer = "matthieu.court@protonmail.com";
      author = "Matthieu Court";
      homepage = "https://github.com/mattlianje/layoutz";
      url = "";
      synopsis = "Simple, beautiful CLI output";
      description = "Compositional terminal output in pure Haskell. Use Layoutz.hs like a header file.\n.\nTables, trees, lists, boxes, charts (line, pie, bar, heatmap), spinners, progress bars.\nANSI colors (256 + truecolor), styles, borders, CJK-aware alignment.\n.\nIncludes an Elm-style TUI runtime with subscriptions, commands, and keyboard handling.\nApps can also animate inline without taking over the terminal.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "inline-bar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."layoutz" or (errorHandler.buildDepError "layoutz"))
          ];
          buildable = true;
        };
        "showcase-app" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."layoutz" or (errorHandler.buildDepError "layoutz"))
          ];
          buildable = true;
        };
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