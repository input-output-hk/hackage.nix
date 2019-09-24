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
    flags = {
      devel = false;
      include = false;
      deterministic-profiling = false;
      };
    package = {
      specVersion = "1.22";
      identifier = { name = "liquidhaskell"; version = "0.8.6.0"; };
      license = "BSD-3-Clause";
      copyright = "2010-19 Ranjit Jhala & Niki Vazou & Eric L. Seidel, University of California, San Diego.";
      maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquidhaskell";
      url = "";
      synopsis = "Liquid Types for Haskell";
      description = "Liquid Types for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-boot" or (buildDepError "ghc-boot"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."gitrev" or (buildDepError "gitrev"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hscolour" or (buildDepError "hscolour"))
          (hsPkgs."liquid-fixpoint" or (buildDepError "liquid-fixpoint"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-simple" or (buildDepError "optparse-simple"))
          (hsPkgs."githash" or (buildDepError "githash"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "liquid" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."liquidhaskell" or (buildDepError "liquidhaskell"))
            ];
          };
        "gradual" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            (hsPkgs."liquid-fixpoint" or (buildDepError "liquid-fixpoint"))
            (hsPkgs."liquidhaskell" or (buildDepError "liquidhaskell"))
            ];
          };
        "target" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."liquidhaskell" or (buildDepError "liquidhaskell"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-ant-xml" or (buildDepError "tasty-ant-xml"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-rerun" or (buildDepError "tasty-rerun"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "liquidhaskell-parser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."liquid-fixpoint" or (buildDepError "liquid-fixpoint"))
            (hsPkgs."liquidhaskell" or (buildDepError "liquidhaskell"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-ant-xml" or (buildDepError "tasty-ant-xml"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        };
      };
    }