{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "netlink";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Google Inc. 2010";
        maintainer = "Max Treskin <mtreskin@metachord.com>";
        author = "David Anderson";
        homepage = "http://netlink-hs.googlecode.com/";
        url = "";
        synopsis = "Netlink communication for Haskell";
        description = "Library to comminicate with Linux kernel via Netlink";
        buildType = "Simple";
      };
      components = {
        netlink = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.monad-loops
            hsPkgs.unix
          ];
        };
      };
    }