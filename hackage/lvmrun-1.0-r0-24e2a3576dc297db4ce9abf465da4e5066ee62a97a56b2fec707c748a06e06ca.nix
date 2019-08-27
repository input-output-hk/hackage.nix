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
      specVersion = "1.18";
      identifier = { name = "lvmrun"; version = "1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2012";
      maintainer = "helium@cs.uu.nl";
      author = "Daan Leijen, Bastiaan Heeren, Jurriaan Hage, *OCAMLers*";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Helium/WebHome";
      url = "";
      synopsis = "The Lazy Virtual Machine (LVM) Runtime System.";
      description = "The Lazy Virtual Machine (LVM) defines a portable instruction set and file\nformat. It is specifically designed to execute languages with non-strict (or\nlazy) semantics. This cabal package defines an LVM runtime written in C.\nThe core assembler (coreasm) for compiling core programs into LVM instructions\nand a library is defined in the lvmlib cabal package. The LVM is used\nas a backend for the Helium compiler. More information about LVM can be\nfound in Chapter 6 of Daan Leijen's PhD Thesis, The Lambda Abroad.\nWe use the Make build-type here. The dependencies are provided in the Cabal\nfile, and their generation is not handled by Cabal. Instead, if you change\ndependencies please run `make depend'. This occurs extremely rarely, though,\nbecause we do not plan to evolve lvmrun.\nFornothing.hs is only there to please Cabal.";
      buildType = "Make";
      };
    components = { exes = { "lvmrun" = {}; }; };
    }