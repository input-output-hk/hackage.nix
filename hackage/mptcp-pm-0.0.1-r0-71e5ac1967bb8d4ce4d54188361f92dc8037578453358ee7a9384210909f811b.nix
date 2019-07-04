{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      exes = {
        "daemon" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            (hsPkgs.process)
            (hsPkgs.cereal)
            (hsPkgs.ip)
            (hsPkgs.aeson)
            (hsPkgs.netlink)
            (hsPkgs.bytestring-conversion)
            (hsPkgs.c2hsc)
            ] ++ (pkgs.lib).optional (flags.dev) (hsPkgs.netlink);
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
            ];
          };
        "monitor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            (hsPkgs.process)
            (hsPkgs.cereal)
            (hsPkgs.ip)
            (hsPkgs.aeson)
            (hsPkgs.netlink)
            (hsPkgs.bytestring-conversion)
            (hsPkgs.c2hsc)
            ] ++ (pkgs.lib).optional (flags.dev) (hsPkgs.netlink);
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
            ];
          };
        "short" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            (hsPkgs.process)
            (hsPkgs.cereal)
            (hsPkgs.ip)
            (hsPkgs.aeson)
            (hsPkgs.netlink)
            (hsPkgs.bytestring-conversion)
            (hsPkgs.c2hsc)
            ] ++ (pkgs.lib).optional (flags.dev) (hsPkgs.netlink);
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.netlink)
            (hsPkgs.cereal)
            (hsPkgs.ip)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
            ];
          };
        };
      };
    }