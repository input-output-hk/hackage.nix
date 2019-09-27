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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sequent-core"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maurerl@cs.uoregon.edu";
      author = "Luke Maurer, Paul Downen, Iavor S. Diatchki";
      homepage = "https://github.com/lukemaurer/sequent-core";
      url = "https://github.com/lukemaurer/sequent-core/archive/master.zip";
      synopsis = "Alternative Core language for GHC plugins";
      description = "Sequent Core is a GHC plugin library based on a sequent calculus. It includes:\n\n*   A set of datatypes for a language expressing function code as /interactions/\nbetween values and their contexts (/continuations/)\n*   A library for writing GHC optimizer plugins using the Sequent Core\nlanguage in place of the built-in Core language\n*   Example plugins written using Sequent Core";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "DumpExpl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequent-core" or (buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SpecConstrExpl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequent-core" or (buildDepError "sequent-core"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SimplExpl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequent-core" or (buildDepError "sequent-core"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "CasesExpl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequent-core" or (buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SizesExpl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequent-core" or (buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }