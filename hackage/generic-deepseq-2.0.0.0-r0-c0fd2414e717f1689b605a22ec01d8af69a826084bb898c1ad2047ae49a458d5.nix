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
      identifier = { name = "generic-deepseq"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012, Maxime Henrion";
      maintainer = "Maxime Henrion <mhenrion@gmail.com>";
      author = "Maxime Henrion";
      homepage = "";
      url = "";
      synopsis = "Generic deep evaluation of data structures";
      description = "This package provides a 'deepseq' function analogous to 'seq', except that it\ntraverses the entire data structure, evaluating it fully, and not just up to\nhead normal form.\n\nUsing lists as an example:\n\n> > [1,2,undefined] `seq` 3\n> 3\n\nWhereas with 'deepseq':\n\n> > [1,2,undefined] `deepseq` 3\n> *** Exception: Prelude.undefined\n\nUnlike the @deepseq@ package, this implementation is based on the\n\"GHC.Generics\" framework as found in GHC >= 7.2, so that it can generate\ninstances automatically for any datatype that has a 'Generic' instance,\nwithout further code.\n\n> data MyType = MyType String Int (Maybe Double)\n>   deriving Generic\n> instance DeepSeq MyType\n\nChanges in version 2.0.0.0:\n\n* Vastly improved performance. As a consequence of these changes, the member function of the DeepSeq class is now 'rnf', instead of 'deepseq'.\n\n* New instances for functions, Ratio and Complex types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }