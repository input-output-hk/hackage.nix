{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hledger-vty";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "A curses-style interface for the hledger accounting tool.";
        description = "hledger is a haskell port and friendly fork of John Wiegley's ledger accounting tool.\nThis package provides a simple curses-style console interface as an alternative to the hledger command line interface.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hledger-vty = {
            depends  = [
              hsPkgs.hledger
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.safe
              hsPkgs.vty
            ];
          };
        };
      };
    }