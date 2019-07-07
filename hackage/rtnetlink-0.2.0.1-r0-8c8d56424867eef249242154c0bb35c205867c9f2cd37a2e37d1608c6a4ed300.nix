{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rtnetlink"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Formaltech Inc.";
      maintainer = "Ben Hamlin <protob3n@gmail.com>";
      author = "Ben Hamlin";
      homepage = "https://github.com/protoben/rtnetlink.hs";
      url = "";
      synopsis = "Manipulate network devices, addresses, and routes on Linux";
      description = "A high-level, extensible, pure-Haskell interface to the\nROUTE_NETLINK subsystem of netlink for manipulating\nnetwork devices on Linux.\nRTNetlink provides the RTNL monad to simplify sending\nand receiving messages, pre-built types for manipulating\ndevices and addresses, and typeclasses for creating your\nown messages, based on linux\\/netlink.h,\nlinux\\/rtnetlink.h, et al.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bits-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.exceptions)
          (hsPkgs.pretty-hex)
          (hsPkgs.random)
          (hsPkgs.socket)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      exes = {
        "rtnl-link" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.split)
            (hsPkgs.rtnetlink)
            ];
          };
        "rtnl-address" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.socket)
            (hsPkgs.split)
            (hsPkgs.rtnetlink)
            ];
          };
        };
      tests = {
        "rtnetlink-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.socket)
            (hsPkgs.unix)
            (hsPkgs.linux-namespaces)
            (hsPkgs.rtnetlink)
            ];
          };
        };
      };
    }