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
      identifier = { name = "rdtsc"; version = "1.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "magr@cs.tu-berlin.de";
      author = "Martin Grabmueller <magr@cs.tu-berlin.de>";
      homepage = "http://uebb.cs.tu-berlin.de/~magr/projects/rdtsc/doc/";
      url = "";
      synopsis = "Binding for the rdtsc machine instruction";
      description = "This module provides the function 'rdtsc' for accessing\nthe 'rdtsc' machine register on modern IA-32 processors.  This is\na 64-bit counter which counts the number of processor cycles since\nthe machine has been powered up.  Using this instruction, you can\nmake very precise time measurements which are independent of the\nactual CPU frequency.  But note that you can get strange results\nsometimes on a superscalar processor.\n\nAlso note that the Haskell foreign function interface imposes some\nadditional overheads.  On my machine, it takes about 950 cycles to\ncall this function twice and to compute the difference, whereas in\nC the overhead is only about 88 cycles.";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }