{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hledger";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://joyful.com/Ledger#hledger";
        url = "";
        synopsis = "A ledger-compatible text-based accounting tool.";
        description = "This is a minimal haskell clone of John Wiegley's ledger\n<http://newartisans.com/software/ledger.html>.  hledger does basic\nregister & balance reporting from a plain text ledger file, and\ndemonstrates a functional implementation of ledger.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hledger" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haskell98
              hsPkgs.directory
              hsPkgs.parsec
              hsPkgs.regex-compat
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }