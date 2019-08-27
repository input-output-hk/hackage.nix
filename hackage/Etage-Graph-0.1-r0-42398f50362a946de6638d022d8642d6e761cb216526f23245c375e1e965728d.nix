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
      specVersion = "1.8";
      identifier = { name = "Etage-Graph"; version = "0.1"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2011 Mitar Milutinovic";
      maintainer = "mitar.haskell@tnode.com";
      author = "Mitar Milutinovic";
      homepage = "http://mitar.tnode.com";
      url = "";
      synopsis = "Data-flow based graph algorithms";
      description = "Data-flow based graph algorithms using the \"Control.Etage\" framework, showcasing its use for data-flow\ncomputations. It is meant to be used with the \"Data.Graph.Inductive\" package which provides graph structures\nthese algorithms take as an input.\n\nCurrently only the shortest paths computation is implemented (from all to all nodes).\n\nAlso a benchmarking @test@ program is provided, comparing the performance with algorithms found in the\n\"Data.Graph.Inductive\" package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Etage" or (buildDepError "Etage"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."Etage" or (buildDepError "Etage"))
            (hsPkgs."Etage-Graph" or (buildDepError "Etage-Graph"))
            ];
          };
        };
      };
    }