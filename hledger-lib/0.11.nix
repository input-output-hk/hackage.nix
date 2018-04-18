{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hledger-lib";
          version = "0.11";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "Core types and utilities for working with hledger (or c++ ledger) data.";
        description = "This is the reusable core of the hledger financial app; use it to\nbuild hledger and c++-ledger compatible finance tools.";
        buildType = "Simple";
      };
      components = {
        hledger-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.regexpr
            hsPkgs.safe
            hsPkgs.time
            hsPkgs.utf8-string
            hsPkgs.HUnit
          ];
        };
      };
    }