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
    flags = { tests = false; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "craftwerk"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Malte Harder <malte.harder@gmail.com>";
      author = "Malte Harder <malte.harder@gmail.com>";
      homepage = "http://mahrz.github.com/craftwerk.html";
      url = "";
      synopsis = "2D graphics library with integrated TikZ output.";
      description = "A high-level and easy to use graphics library\nwith integrated TikZ output.\n\nCraftwerk is a high-level 2D vector graphics library for output of\nTikZ pictures that can be typeset using (pdf)LaTeX. The TikZ library\nand documentation can be found at: <http://sourceforge.net/projects/pgf>.\n\nCraftwerk tries to encapsulate the graphics backend such that figures\ncan also be rendered with a Cairo backend and quickly displayed in a\nGtk window. The aim is to support TikZ and Cairo seamlessly as\npossible, meaning that graphics produced with either backend should\nlook as similar as possible. Other backends are easily written and the\naim is to provide generic fallback functions for features that are not\nnatively supported by some backend.\n\nThanks to Jannis Harder for some contributions and ideas to the\nlibrary.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
        ];
        buildable = true;
      };
      exes = {
        "example1" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."craftwerk" or (errorHandler.buildDepError "craftwerk"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "example2" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."craftwerk" or (errorHandler.buildDepError "craftwerk"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "example3" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."craftwerk" or (errorHandler.buildDepError "craftwerk"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "test-craftwerk" = {
          depends = pkgs.lib.optionals (!!flags.tests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."craftwerk" or (errorHandler.buildDepError "craftwerk"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = if !flags.tests then false else true;
        };
      };
    };
  }