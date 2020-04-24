{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "hans"; version = "2.5.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
          ] ++ (if system.isHalvm
          then [
            (hsPkgs."XenDevice" or ((hsPkgs.pkgs-errors).buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or ((hsPkgs.pkgs-errors).buildDepError "HALVMCore"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.bounded-channels) (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))) ++ [
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."hans" or ((hsPkgs.pkgs-errors).buildDepError "hans"))
            ] ++ (pkgs.lib).optional (flags.bounded-channels) (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))) ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs."XenDevice" or ((hsPkgs.pkgs-errors).buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or ((hsPkgs.pkgs-errors).buildDepError "HALVMCore"))
            ];
          buildable = if flags.example then true else false;
          };
        "web-server" = {
          depends = (pkgs.lib).optionals (!system.isHalvm) ((pkgs.lib).optionals (flags.web-server) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
            (hsPkgs."hans" or ((hsPkgs.pkgs-errors).buildDepError "hans"))
            ]);
          buildable = if system.isHalvm
            then false
            else if flags.web-server then true else false;
          };
        "tcp-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."hans" or ((hsPkgs.pkgs-errors).buildDepError "hans"))
            ] ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs."XenDevice" or ((hsPkgs.pkgs-errors).buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or ((hsPkgs.pkgs-errors).buildDepError "HALVMCore"))
            ];
          buildable = true;
          };
        "tcp-test-client" = {
          depends = (pkgs.lib).optionals (!system.isHalvm) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = if system.isHalvm then false else true;
          };
        "test-suite" = {
          depends = (pkgs.lib).optionals (flags.enable-tests) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."hans" or ((hsPkgs.pkgs-errors).buildDepError "hans"))
            ];
          buildable = if flags.enable-tests then true else false;
          };
        };
      };
    }