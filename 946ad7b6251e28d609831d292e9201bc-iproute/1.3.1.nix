{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iproute";
          version = "1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/iproute/";
        url = "";
        synopsis = "IP Routing Table";
        description = "IP Routing Table is a tree of IP ranges\nto search one of them on the longest\nmatch base. It is a kind of TRIE with one\nway branching removed. Both IPv4 and IPv6\nare supported.";
        buildType = "Simple";
      };
      components = {
        iproute = {
          depends  = [
            hsPkgs.base
            hsPkgs.appar
            hsPkgs.byteorder
            hsPkgs.containers
            hsPkgs.network
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2.1" && (compiler.isGhc && compiler.version.lt "7.6.1")) hsPkgs.ghc-prim;
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.appar
              hsPkgs.byteorder
              hsPkgs.containers
              hsPkgs.network
              hsPkgs.safe
            ];
          };
        };
      };
    }