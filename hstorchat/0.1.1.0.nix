{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hstorchat";
          version = "0.1.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2014 Christopher Reichert";
        maintainer = "creichert07@gmail.com";
        author = "Christopher Reichert";
        homepage = "";
        url = "";
        synopsis = "Distributed instant messaging over Tor";
        description = "A Distributed instant messaging application built on Tor Hidden Services.\nCompatible with the original TorChat client.";
        buildType = "Simple";
      };
      components = {
        hstorchat = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hsqml
            hsPkgs.network
            hsPkgs.random
            hsPkgs.safecopy
            hsPkgs.socks
            hsPkgs.tagged
            hsPkgs.text
          ];
        };
        exes = {
          hstorchat = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hsqml
              hsPkgs.hstorchat
              hsPkgs.network
              hsPkgs.process
              hsPkgs.text
            ];
          };
        };
        tests = {
          hstorchat-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hstorchat
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }