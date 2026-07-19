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
      identifier = { name = "hgg-ihaskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "iHaskell (Jupyter) inline display backend for hgg";
      description = "A thin wiring package that displays hgg figures inline in Jupyter\ncells running the IHaskell kernel. It simply passes the Text returned\nby the SVG backend ('renderSVG') to IHaskell's SVG display. The\n@ihaskell@ dependency is isolated here, keeping hgg-core / hgg-svg\ndependency-clean.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
          (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
        ];
        buildable = true;
      };
      exes = {
        "ihaskell-demo-svg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hgg-ihaskell-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hgg-ihaskell" or (errorHandler.buildDepError "hgg-ihaskell"))
          ];
          buildable = true;
        };
      };
    };
  }