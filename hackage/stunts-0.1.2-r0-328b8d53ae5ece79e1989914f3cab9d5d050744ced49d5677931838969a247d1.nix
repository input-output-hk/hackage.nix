let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { capture = false; portable = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "stunts"; version = "0.1.2"; };
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."lambdacube-engine" or (buildDepError "lambdacube-engine"))
            (hsPkgs."lambdacube-bullet" or (buildDepError "lambdacube-bullet"))
            (hsPkgs."bullet" or (buildDepError "bullet"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ] ++ (pkgs.lib).optional (flags.capture) (hsPkgs."Codec-Image-DevIL" or (buildDepError "Codec-Image-DevIL"));
          };
        };
      };
    }