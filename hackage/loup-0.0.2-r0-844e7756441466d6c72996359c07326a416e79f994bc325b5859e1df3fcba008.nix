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
      specVersion = "1.22";
      identifier = { name = "loup"; version = "0.0.2"; };
      license = "MIT";
      copyright = "Copyright (C) 2017 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/loup";
      url = "";
      synopsis = "Amazon Simple Workflow Service Wrapper for Work Pools.";
      description = "Loup is a wrapper around Amazon Simple Workflow Service for Work Pools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."amazonka" or (buildDepError "amazonka"))
          (hsPkgs."amazonka-swf" or (buildDepError "amazonka-swf"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."preamble" or (buildDepError "preamble"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."turtle" or (buildDepError "turtle"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      exes = {
        "loup-actor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."loup" or (buildDepError "loup"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            ];
          };
        "loup-decider" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."loup" or (buildDepError "loup"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            ];
          };
        "loup-converger" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."loup" or (buildDepError "loup"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            ];
          };
        "shake-loup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shakers" or (buildDepError "shakers"))
            ];
          };
        };
      };
    }