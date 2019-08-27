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
    flags = { test-doctests = true; test-hlint = true; unstable = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "rcu"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Edward A. Kmett, Theodore Rhys Cooper";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>, Ted Cooper <anthezium@gmail.com>";
      author = "Ted Cooper and Edward A. Kmett";
      homepage = "http://github.com/ekmett/rcu/";
      url = "";
      synopsis = "Read-Copy-Update for Haskell";
      description = "Read-Copy-Update for Haskell";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.unstable) (hsPkgs."stm" or (buildDepError "stm"));
        };
      exes = {
        "MoveStringSTM" = {
          depends = (pkgs.lib).optionals (!(!flags.unstable)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."rcu" or (buildDepError "rcu"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "MoveStringQSBR" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."rcu" or (buildDepError "rcu"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        };
      };
    }