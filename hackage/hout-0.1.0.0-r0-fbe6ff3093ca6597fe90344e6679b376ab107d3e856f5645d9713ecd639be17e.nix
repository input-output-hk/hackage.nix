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
      specVersion = "1.10";
      identifier = { name = "hout"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Isaac van Bakel";
      maintainer = "ivb@vanbakel.io";
      author = "Isaac van Bakel";
      homepage = "https://github.com/ivanbakel/hout-prover#readme";
      url = "";
      synopsis = "Non-interactive proof assistant monad for first-order logic.";
      description = "Hout is an in-Haskell non-interactive proof assistant for\nintuitionistic first-order logic, using Haskell's type\nsystem. If a proof written in Hout compiles, it is correct.\n\nAlternatively, Hout provides an indexed monad which,\ncombined with Haskell's do notation, allows for writing\nHaskell code in the style of proof assistants.\n\nThe main part of Hout's value is found in\n\"Hout.Prover.Tactics\", which defines the @Tactic@ monad\nand several proof tactics similar to those found in Coq.\nOther useful defintions for using Hout can be found in\n\"Hout.Prover.Proofs\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."indexed" or (buildDepError "indexed"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."indexed" or (buildDepError "indexed"))
            (hsPkgs."do-notation" or (buildDepError "do-notation"))
            (hsPkgs."hout" or (buildDepError "hout"))
            ];
          buildable = true;
          };
        };
      };
    }