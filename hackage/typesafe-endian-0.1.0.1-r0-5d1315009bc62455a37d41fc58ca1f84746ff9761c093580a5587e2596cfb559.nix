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
      specVersion = "1.6.0";
      identifier = { name = "typesafe-endian"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2013 John Ericson <Ericson2314@Yahoo.com>";
      maintainer = "John Ericson <Ericson2314@Yahoo.com>";
      author = "John Ericson <Ericson2314@Yahoo.com>";
      homepage = "https://github.com/Ericson2314/typesafe-endian";
      url = "";
      synopsis = "Enforce endianness with types";
      description = "This package provides newtype wrappers for separating data with specified\nendianness from other data of the same type with normal, system-specific\nendianness. Since these wrappers are newtypes, no runtime overhead is\nincurred.\nCurrently the underlying 'EndianSensitive' typeclass its instances are taken\ndirectly from the 'data-endian' package. However, if Haskell or GHC ever gets\na built-in equivalent, like as is proposed in\n'http://ghc.haskell.org/trac/ghc/ticket/7902', it should be trivial to update\nthis to use that instead.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }