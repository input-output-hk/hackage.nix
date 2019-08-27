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
    flags = { developer = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "forsyde-deep"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2018 ForSyDe Group, KTH/EECS/ES";
      maintainer = "forsyde-dev@eecs.kth.se";
      author = "Alfonso Acosta, Hendrik Woidt";
      homepage = "https://forsyde.github.io/";
      url = "";
      synopsis = "ForSyDe's Haskell-embedded Domain Specific Language.";
      description = "The ForSyDe (Formal System Design) methodology has been developed with the objective to move system design to a higher level of abstraction and to bridge the abstraction gap by transformational design refinement.\nThis library provides ForSyDe's implementation as a Haskell-embedded Domain Specific Language (DSL). For more information, please see ForSyDe's website: <https://forsyde.github.io/>.\nThis library provides the deep implementation of ForSyDe in Haskell.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.parameterized-data or (pkgs.buildPackages.parameterized-data or (buildToolDepError "parameterized-data")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (buildToolDepError "containers")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.regex-posix or (pkgs.buildPackages.regex-posix or (buildToolDepError "regex-posix")))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl or (buildToolDepError "mtl")))
        (hsPkgs.buildPackages.syb or (pkgs.buildPackages.syb or (buildToolDepError "syb")))
        (hsPkgs.buildPackages.pretty or (pkgs.buildPackages.pretty or (buildToolDepError "pretty")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (buildToolDepError "template-haskell")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.random or (pkgs.buildPackages.random or (buildToolDepError "random")))
        (hsPkgs.buildPackages.type-level or (pkgs.buildPackages.type-level or (buildToolDepError "type-level")))
        (hsPkgs.buildPackages.HUnit or (pkgs.buildPackages.HUnit or (buildToolDepError "HUnit")))
        (hsPkgs.buildPackages.QuickCheck or (pkgs.buildPackages.QuickCheck or (buildToolDepError "QuickCheck")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."type-level" or (buildDepError "type-level"))
          (hsPkgs."parameterized-data" or (buildDepError "parameterized-data"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parameterized-data" or (buildDepError "parameterized-data"))
            (hsPkgs."type-level" or (buildDepError "type-level"))
            (hsPkgs."forsyde-deep" or (buildDepError "forsyde-deep"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }