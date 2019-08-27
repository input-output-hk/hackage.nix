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
      identifier = { name = "myTestlll"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2014 Paul Hudak";
      maintainer = "Mark Santolucito <mark.santolucito@yale.edu>,";
      author = "Mark Santolucito <mark.santolucito@yale.edu>,";
      homepage = "http://haskell.cs.yale.edu/";
      url = "";
      synopsis = "testign upload";
      description = "high-performance back-end for real-time audio.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."markov-chain" or (buildDepError "markov-chain"))
          (hsPkgs."CCA" or (buildDepError "CCA"))
          (hsPkgs."UISF" or (buildDepError "UISF"))
          (hsPkgs."PortMidi" or (buildDepError "PortMidi"))
          (hsPkgs."HCodecs" or (buildDepError "HCodecs"))
          (hsPkgs."heap" or (buildDepError "heap"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."monadIO" or (buildDepError "monadIO"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."pure-fft" or (buildDepError "pure-fft"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."arrows" or (buildDepError "arrows"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      tests = {
        "test-euterpea" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Euterpea" or (buildDepError "Euterpea"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            ];
          };
        };
      };
    }