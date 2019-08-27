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
    flags = { dev = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "mptcp-pm"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "teto";
      author = "";
      homepage = "https://github.com/teto/netlink_pm";
      url = "";
      synopsis = "A work in progress Multipath TCP path manager";
      description = "Multipath TCP (www.multipath-tcp.org) starting from version 0.95 provides a\nnetlink path manager module. This package implements the userspace part to allow\nuserspace daemons to control MPTCP behavior.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      exes = {
        "daemon" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."netlink" or (buildDepError "netlink"))
            (hsPkgs."bytestring-conversion" or (buildDepError "bytestring-conversion"))
            (hsPkgs."c2hsc" or (buildDepError "c2hsc"))
            ] ++ (pkgs.lib).optional (flags.dev) (hsPkgs."netlink" or (buildDepError "netlink"));
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
            ];
          };
        "monitor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."netlink" or (buildDepError "netlink"))
            (hsPkgs."bytestring-conversion" or (buildDepError "bytestring-conversion"))
            (hsPkgs."c2hsc" or (buildDepError "c2hsc"))
            ] ++ (pkgs.lib).optional (flags.dev) (hsPkgs."netlink" or (buildDepError "netlink"));
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
            ];
          };
        "short" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."netlink" or (buildDepError "netlink"))
            (hsPkgs."bytestring-conversion" or (buildDepError "bytestring-conversion"))
            (hsPkgs."c2hsc" or (buildDepError "c2hsc"))
            ] ++ (pkgs.lib).optional (flags.dev) (hsPkgs."netlink" or (buildDepError "netlink"));
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."netlink" or (buildDepError "netlink"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
            ];
          };
        };
      };
    }