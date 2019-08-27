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
    flags = {
      bounded-channels = false;
      enable-tests = false;
      example = false;
      web-server = true;
      word32-in-random = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "hans"; version = "2.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "halvm-devel@community.galois.com";
      author = "Galois Inc., Peng Li, Stephan Zdancewic";
      homepage = "";
      url = "";
      synopsis = "IPv4 Network Stack";
      description = "HaNS is a lightweight, pure Haskell network stack that can be used for Haskell\nnetworking in the context of the HaLVM, or with a Linux tap device. Currently,\nHaNS supports 802.3, IPv4, ARP, DHCP (partially), ICMP, UDP, and TCP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monadLib" or (buildDepError "monadLib"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          ] ++ (if system.isHalvm
          then [
            (hsPkgs."XenDevice" or (buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or (buildDepError "HALVMCore"))
            ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.bounded-channels) (hsPkgs."BoundedChan" or (buildDepError "BoundedChan"))) ++ [
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      exes = {
        "test" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."monadLib" or (buildDepError "monadLib"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."hans" or (buildDepError "hans"))
            ] ++ (pkgs.lib).optional (flags.bounded-channels) (hsPkgs."BoundedChan" or (buildDepError "BoundedChan"))) ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs."XenDevice" or (buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or (buildDepError "HALVMCore"))
            ];
          };
        "web-server" = {
          depends = (pkgs.lib).optionals (!system.isHalvm) ((pkgs.lib).optionals (flags.web-server) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."monadLib" or (buildDepError "monadLib"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."hans" or (buildDepError "hans"))
            ]);
          };
        "tcp-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."monadLib" or (buildDepError "monadLib"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."hans" or (buildDepError "hans"))
            ] ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs."XenDevice" or (buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or (buildDepError "HALVMCore"))
            ];
          };
        "test-suite" = {
          depends = (pkgs.lib).optionals (flags.enable-tests) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."hans" or (buildDepError "hans"))
            ];
          };
        };
      };
    }