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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gloss-examples"; version = "1.7.4.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://gloss.ouroborus.net";
      url = "";
      synopsis = "Examples using the gloss library";
      description = "Examples using the gloss graphics library.\nA mixed bag of fractals, particle simulations and cellular automata.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gloss-bitmap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bmp" or (buildDepError "bmp"))
            ];
          };
        "gloss-boids" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-clock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-conway" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "gloss-draw" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-easy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-eden" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "gloss-flake" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-gameevent" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-hello" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-lifespan" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "gloss-machina" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-occlusion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-styrene" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          };
        "gloss-tree" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-visibility" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "gloss-zen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            ];
          };
        "gloss-crystal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."gloss-raster" or (buildDepError "gloss-raster"))
            ];
          };
        "gloss-ray" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."gloss-raster" or (buildDepError "gloss-raster"))
            ];
          };
        "gloss-pulse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."gloss-raster" or (buildDepError "gloss-raster"))
            ];
          };
        "gloss-wave" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."gloss-raster" or (buildDepError "gloss-raster"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          };
        "gloss-fluid" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."repa-io" or (buildDepError "repa-io"))
            (hsPkgs."repa-algorithms" or (buildDepError "repa-algorithms"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          };
        "gloss-snow" = {};
        "gloss-mandel" = {};
        };
      };
    }