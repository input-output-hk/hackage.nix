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
      identifier = { name = "missing-py2"; version = "1.0.1"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (c) 2005-2008 John Goerzen";
      maintainer = "Dom De Re";
      author = "John Goerzen";
      homepage = "https://github.com/domdere/missing-py2";
      url = "";
      synopsis = "Haskell interface to Python";
      description = "A Haskell Interface into the standard Python Interpreter\n\nA fork of John Goerzen's MissingPy library, hlinted and updated to run with GHC 7.6.3,\nthis is for legacy projects.\n\nFor newer projects you might want to consider http://hackage.haskell.org/package/cpython\ninstead.\n\nOriginal Documentation:\n\nMissingPy is two things:\n\nA Haskell binding for many C and Python libraries for tasks such as\ndata compression, databases, etc.  This can be found in the\nMissingPy module tree.\n\nAlso, it's a low-level Haskell binding to the Python interpreter to\nenable development of hybrid applications that use both\nenvironments.  This can be found in the Python module tree.  The\nHaskell bindings above use this environment.\n\nMissingPy permits you to call Python code from Haskell.  It does NOT\npermit you to call Haskell code from Python.\n\nMissingPy is the companion to my MissingH library, and integrates with\nit.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."anydbm" or (buildDepError "anydbm"))
          ];
        };
      tests = {
        "originalunittests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."anydbm" or (buildDepError "anydbm"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."missing-py2" or (buildDepError "missing-py2"))
            ];
          };
        };
      };
    }