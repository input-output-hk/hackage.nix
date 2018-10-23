{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bounded-channels = false;
      example = false;
      halvm = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hans";
        version = "2.1.0.0";
      };
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
      "hans" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.monadLib)
          (hsPkgs.time)
          (hsPkgs.fingertree)
          (hsPkgs.random)
        ] ++ (if flags.halvm
          then [
            (hsPkgs.XenDevice)
            (hsPkgs.communication)
          ]
          else [
            (hsPkgs.unix)
          ])) ++ pkgs.lib.optional (flags.bounded-channels) (hsPkgs.BoundedChan);
      };
      exes = {
        "test" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.monadLib)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.hans)
          ] ++ pkgs.lib.optional (flags.bounded-channels) (hsPkgs.BoundedChan)) ++ pkgs.lib.optionals (flags.halvm) [
            (hsPkgs.XenDevice)
            (hsPkgs.RendezvousLib)
            (hsPkgs.HALVMCore)
            (hsPkgs.communication)
          ];
        };
      };
    };
  }