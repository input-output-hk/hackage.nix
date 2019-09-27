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
      identifier = { name = "hub"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan, 2011-2013";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan <chris@chrisdornan.com>";
      homepage = "http://justhub.org";
      url = "";
      synopsis = "For multiplexing GHC installations and providing\ndevelopment sandboxes";
      description = "This package provides a utility for multiplexing\nmultiple GHC and Haskell Platform installations,\neach selected by an environment variable or a work-tree\nconfiguration file.\n\nThe package also provides flexible development sandboxes\n(aka /hubs/) into which packages can be installed\nand subsequently erased. Commands are provided for\n(re)naming, annotating, replicating, swapping, archiving,\nlocking and removing hubs. E.g.,\n\n> hub init\n\nwill create a hub based on the default GHC installation\nand associate the current directory with it. Any use\nof /cabal/ or the GHC tools within this directory or it's\ndescendants will work with correct tool chain and the\nprivate user-package database belonging to the hub.\n\nThe following would (i) download 'hexpat' (ii) install it\nin a named 'hexpat-test' hub connected to the /2011.2.0.1/\nHaskell Platform, (iii) build the 'hexpat' test suite\nwith the same hub, and (iv) finally run the test suite.\n\n>cabal unpack hexpat\n>cd hexpat-*\n>hub init -s 2011.2.0.1 hexpat-test\n>cabal install\n>cd test\n>cabal install --bindir=.\n>./testsuite\n\nThis same 'hexpat-test' hub can be shared with other\nwork trees.\n\nThe tool is intended to be provided as part of a\ndistribution (like the /JustHub/ Enterprise Linux\ndistribution) but it can be configured with existing\nstock GHC installations without too much effort.  Once\ninstalled and configured the hub command  inter-operates\nseamlessly with the GHC tools (/ghc/, /ghci/, /ghc-pkg/,\netc.) and /Cabal-install/.\n\nFor installation instructions, introductory material,\nFAQs, etc., see the home page http:\\/\\/justhub.org.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hub" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hexpat" or (buildDepError "hexpat"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }