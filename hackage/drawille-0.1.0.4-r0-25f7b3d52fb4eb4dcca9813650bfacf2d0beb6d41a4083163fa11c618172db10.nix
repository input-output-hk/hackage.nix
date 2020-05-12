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
    flags = { no-tests = false; examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "drawille"; version = "0.1.0.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) Pedro Yamada";
      maintainer = "Pedro Yamada <tacla.yamada@gmail.com>";
      author = "Pedro Yamada <tacla.yamada@gmail.com>";
      homepage = "https://github.com/yamadapc/haskell-drawille";
      url = "";
      synopsis = "A port of asciimoo's drawille to haskell";
      description = "A tiny library for drawing with braille.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "senoid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."AC-Angle" or (errorHandler.buildDepError "AC-Angle"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "image2term" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = if flags.no-tests then false else true;
          };
        };
      };
    }