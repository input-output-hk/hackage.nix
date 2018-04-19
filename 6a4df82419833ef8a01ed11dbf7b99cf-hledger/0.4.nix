{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      vty = true;
      happs = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hledger";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "A ledger-compatible text-based accounting tool.";
        description = "hledger is a partial haskell clone of John Wiegley's \"ledger\" text-based\naccounting tool. It generates ledger-compatible register & balance reports\nfrom a plain text journal, and demonstrates a functional implementation of ledger.";
        buildType = "Simple";
      };
      components = {
        hledger = {
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
            hsPkgs.filepath
          ];
        };
        exes = {
          hledger = {
            depends  = ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haskell98
              hsPkgs.directory
              hsPkgs.parsec
              hsPkgs.regex-compat
              hsPkgs.regexpr
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.testpack
            ] ++ pkgs.lib.optional _flags.vty hsPkgs.vty) ++ pkgs.lib.optionals _flags.happs [
              hsPkgs.happstack
              hsPkgs.happstack-data
              hsPkgs.happstack-server
              hsPkgs.happstack-state
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }