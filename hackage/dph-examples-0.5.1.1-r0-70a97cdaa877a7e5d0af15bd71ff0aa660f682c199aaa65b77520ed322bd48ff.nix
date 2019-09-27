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
    flags = { gloss = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "dph-examples"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://www.cse.unsw.edu.au/~chak/project/dph/";
      url = "";
      synopsis = "Examples using the DPH library.";
      description = "Examples using the DPH library.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dph-sumsq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (buildDepError "dph-par"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-sumsq-seq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (buildDepError "dph-seq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-dotp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (buildDepError "dph-par"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-dotp-seq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (buildDepError "dph-seq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-evens" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (buildDepError "dph-par"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-evens-seq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (buildDepError "dph-seq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-reverse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (buildDepError "dph-par"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-reverse-seq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (buildDepError "dph-seq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-smvm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (buildDepError "dph-par"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-smvm-seq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (buildDepError "dph-seq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-quickhull" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (buildDepError "dph-par"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-quickhull-seq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-seq" or (buildDepError "dph-prim-seq"))
            (hsPkgs."dph-seq" or (buildDepError "dph-seq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-quickhull-vector" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "dph-quicksort" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."dph-base" or (buildDepError "dph-base"))
            (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
            (hsPkgs."dph-par" or (buildDepError "dph-par"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ];
          buildable = true;
          };
        "dph-nbody" = {
          depends = if flags.gloss
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."vector" or (buildDepError "vector"))
              (hsPkgs."dph-base" or (buildDepError "dph-base"))
              (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
              (hsPkgs."dph-par" or (buildDepError "dph-par"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."parseargs" or (buildDepError "parseargs"))
              (hsPkgs."gloss" or (buildDepError "gloss"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."vector" or (buildDepError "vector"))
              (hsPkgs."dph-base" or (buildDepError "dph-base"))
              (hsPkgs."dph-prim-par" or (buildDepError "dph-prim-par"))
              (hsPkgs."dph-par" or (buildDepError "dph-par"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."parseargs" or (buildDepError "parseargs"))
              ];
          buildable = true;
          };
        };
      };
    }