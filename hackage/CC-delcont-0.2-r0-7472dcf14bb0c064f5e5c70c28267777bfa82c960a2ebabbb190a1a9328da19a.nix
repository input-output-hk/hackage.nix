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
      identifier = { name = "CC-delcont"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2005--2008, R. Kent Dybvig, Simon Peyton Jones,\nAmr Sabry, Oleg Kiselyov, Chung-chieh Shan";
      maintainer = "dan.doel@gmail.com";
      author = "R. Kent Dybvig, Simon Peyton Jones, Amr Sabry, Oleg Kiselyov,\nChung-chieh Shan";
      homepage = "http://code.haskell.org/~dolio/CC-delcont";
      url = "";
      synopsis = "Delimited continuations and dynamically scoped variables";
      description = "An implementation of multi-prompt delimited continuations based\non the paper, /A Monadic Framework for Delimited Continuations/,\nby R. Kent Dybvig, Simon Peyton Jones and Amr Sabry\n(<http://www.cs.indiana.edu/~sabry/papers/monadicDC.pdf>).\nIt also includes a corresponding implementation of dynamically\nscoped variables, as implemented in the paper,\n/Delimited Dynamic Binding/, by Oleg Kiselyov, Chung-chieh Shan\nand Amr Sabry\n(<http://okmij.org/ftp/papers/DDBinding.pdf>),\nadapted from the original haskell code,\n(<http://okmij.org/ftp/packages/DBplusDC.tar.gz>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }