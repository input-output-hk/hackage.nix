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
      identifier = { name = "anydbm"; version = "1.0.7"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2004-2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "";
      homepage = "http://software.complete.org/anydbm";
      url = "";
      synopsis = "Interface for DBM-like database systems";
      description = "This module provides a generic infrastructure for supporting storage\nof hash-like items with String-to-String mappings.  It can be used\nfor in-memory or on-disk storage.\n\nTwo simple backend drivers are included with this package: one\nthat is RAM-only, and one that is persistent and disk-backed.\nThe hdbc-anydbm package provides another driver, which lets you use\nsimple tables in any SQL database to provide a DBM-like interface.\nMissingPy also provides a Python driver which lets you use any\nPython anydbm driver under Haskell AnyDBM.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }