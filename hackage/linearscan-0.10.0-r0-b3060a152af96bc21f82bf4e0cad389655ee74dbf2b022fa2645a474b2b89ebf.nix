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
      identifier = { name = "linearscan"; version = "0.10.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/linearscan";
      url = "";
      synopsis = "Linear scan register allocator, formally verified in Coq";
      description = "The @linearscan@ library is an implementation -- in Coq, extracted to\nHaskell -- of a register allocation algorithm developed by Christian Wimmer.\nIt is described in detail in his Masters thesis, which can be found at\n<http://www.christianwimmer.at/Publications/Wimmer04a/Wimmer04a.pdf>.  A\nJava implementation of this same algorithm, by that author, is used in\nOracle's Graal project.\n\nThis version of the algorithm was written and verified in Coq, containing\nover 130 proved lemmas, at over 5K LOC.  It was funded as a research project\nby BAE Systems (<http://www.baesystems.com>), to be used in an in-house\ncompiler written in Haskell.\n\nIn order for the Coq code to be usable from Haskell, it is first extracted\nfrom Coq as a Haskell library, during which many of Coq's fundamental types\nare mapped directly onto counterparts in the Haskell Prelude.  Thus, it\nshould be within the performance range of an equivalent implementation\nwritten directly in Haskell.\n\nNote that not every conceivable property of this library has been proven.\nFor some of the lower layers this is true, because the algebraic constraints\non these components could be exhaustively described in the context of their\nuse.  However, higher-level components represent a great variety of use\ncases, and not every one of these cases has been proven correct.  This\nrepresents an ongoing effort, with the hope that proofs will entirely\nreplace the necessity for ad hoc unit testing, and that at some point we can\nknow that any allocation produced by this library must either fail, or be\nmathematically sound.\n\nThis library's sole entry point is the 'LinearScan.allocate' function, which\ntakes a list of information about basic blocks to an equivalent list, with\nannotations indicating allocation choices.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      };
    }