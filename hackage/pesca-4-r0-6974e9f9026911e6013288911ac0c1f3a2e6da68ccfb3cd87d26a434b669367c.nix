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
      specVersion = "0";
      identifier = { name = "pesca"; version = "4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Aarne Ranta <http://www.cs.chalmers.se/~aarne/>";
      author = "Aarne Ranta";
      homepage = "http://www.cs.chalmers.se/~aarne/pesca/";
      url = "";
      synopsis = "Proof Editor for Sequent Calculus";
      description = "Pesca is a program that helps in the construction of proofs\nin sequent calculus. It works both as a proof editor and as an automatic theorem\nprover. Proofs constructed in Pesca can both be seen on the terminal and printed\ninto LaTeX files.\n\nThe user of Pesca can choose among different versions of classical and\nintuitionistic proposition and predicate calculi, and extend them by systems of\nnonlogical axioms. The implementation of Pesca is written in the\nfunctional programming language Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pesca" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }