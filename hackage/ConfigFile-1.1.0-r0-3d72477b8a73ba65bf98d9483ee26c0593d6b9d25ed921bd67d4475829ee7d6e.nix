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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "ConfigFile"; version = "1.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/configfile";
      url = "";
      synopsis = "Configuration file reading & writing";
      description = "Parser and writer for handling sectioned config files in\nHaskell.\n\nThe ConfigFile module works with configuration files in a standard\nformat that is easy for the user to edit, easy for the programmer\nto work with, yet remains powerful and flexible.  It is inspired by,\nand compatible with, Python's ConfigParser module.  It uses files\nthat resemble Windows .INI-style files, but with numerous\nimprovements.\n\nConfigFile provides simple calls to both read and write config files.\nIt's possible to make a config file parsable by this module,\nthe Unix shell, and make.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."testpack" or (buildDepError "testpack"))
            ];
          };
        };
      };
    }