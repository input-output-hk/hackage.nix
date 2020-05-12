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
    flags = { capture = false; portable = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "stunts"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011, Csaba Hruska";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska, Gergely Patai";
      homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
      url = "";
      synopsis = "A revival of the classic game Stunts (LambdaCube tech demo)";
      description = "A revival of the classic racing game Stunts to serve as a\nnon-toy-sized example for LambdaCube. In order to make it work, you\nneed to download the original game as per the instructions given by\nthe program.\n\nThe program contains screenshotting functionality that allows you to\ncapture frames as separate PNG files to produce movies with a smooth\nframe rate. To enable, install with the @capture@ flag:\n\n@cabal install --flags=capture@\n\nIt is also possible to compile a version of the program that looks\nfor the resource files in the current directory by enabling the\n@portable@ flag.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stunts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."lambdacube-engine" or (errorHandler.buildDepError "lambdacube-engine"))
            (hsPkgs."lambdacube-bullet" or (errorHandler.buildDepError "lambdacube-bullet"))
            (hsPkgs."bullet" or (errorHandler.buildDepError "bullet"))
            (hsPkgs."elerea" or (errorHandler.buildDepError "elerea"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optional (flags.capture) (hsPkgs."Codec-Image-DevIL" or (errorHandler.buildDepError "Codec-Image-DevIL"));
          buildable = true;
          };
        };
      };
    }