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
      identifier = { name = "kure"; version = "2.12.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012--2013 The University of Kansas";
      maintainer = "Neil Sculthorpe <neil@ittc.ku.edu>";
      author = "Neil Sculthorpe and Andy Gill";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/software/kure.html";
      url = "";
      synopsis = "Combinators for Strategic Programming";
      description = "The Kansas University Rewrite Engine (KURE) is a domain-specific language for strategic rewriting.\nKURE was inspired by Stratego and StrategyLib, and has similarities with Scrap Your Boilerplate and Uniplate.\n\nThe basic transformation functionality can be found in \"Language.KURE.Translate\",\nand the traversal functionality can be found in \"Language.KURE.Walker\".\nSeveral basic examples of using KURE are provided in the source-code bundle.\nFor larger examples, see the HERMIT or HTML-KURE packages.\n\nYou can read about KURE in the following article:\n\nKURE: A Haskell-Embedded Strategic Programming Language with Custom Closed Universes.  Neil Sculthorpe and Nicolas Frisby and Andy Gill.  2013.\n<http://www.ittc.ku.edu/~neil/papers_and_talks/kure.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }