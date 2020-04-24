{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { capture = false; portable = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "stunts"; version = "0.1.0"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."lambdacube-engine" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-engine"))
            (hsPkgs."lambdacube-bullet" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-bullet"))
            (hsPkgs."bullet" or ((hsPkgs.pkgs-errors).buildDepError "bullet"))
            (hsPkgs."elerea" or ((hsPkgs.pkgs-errors).buildDepError "elerea"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ] ++ (pkgs.lib).optional (flags.capture) (hsPkgs."Codec-Image-DevIL" or ((hsPkgs.pkgs-errors).buildDepError "Codec-Image-DevIL"));
          buildable = true;
          };
        };
      };
    }