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
      identifier = { name = "hans"; version = "2.4.0.1"; };
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
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.monadLib)
          (hsPkgs.time)
          (hsPkgs.fingertree)
          (hsPkgs.stm)
          ] ++ (if system.isHalvm
          then [ (hsPkgs.XenDevice) (hsPkgs.HALVMCore) ]
          else [
            (hsPkgs.unix)
            ])) ++ (pkgs.lib).optional (flags.bounded-channels) (hsPkgs.BoundedChan)) ++ [
          (hsPkgs.random)
          ];
        };
      exes = {
        "test" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.monadLib)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.hans)
            ] ++ (pkgs.lib).optional (flags.bounded-channels) (hsPkgs.BoundedChan)) ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs.XenDevice)
            (hsPkgs.HALVMCore)
            ];
          };
        "web-server" = {
          depends = (pkgs.lib).optionals (!system.isHalvm) ((pkgs.lib).optionals (flags.web-server) [
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.monadLib)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.HTTP)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.hans)
            ]);
          };
        "tcp-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.monadLib)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.hans)
            ] ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs.XenDevice)
            (hsPkgs.HALVMCore)
            ];
          };
        "echo-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.monadLib)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.hans)
            ] ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs.XenDevice)
            (hsPkgs.HALVMCore)
            ];
          };
        "tcp-test-client" = {
          depends = (pkgs.lib).optionals (!system.isHalvm) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            ];
          };
        "test-suite" = {
          depends = (pkgs.lib).optionals (flags.enable-tests) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.cereal)
            (hsPkgs.hans)
            ];
          };
        };
      };
    }