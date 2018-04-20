{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      production = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hledger-web";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "A web interface for the hledger accounting tool.";
        description = "hledger is a haskell port and friendly fork of John Wiegley's ledger accounting tool.\nThis package provides a web interface as an alternative to the hledger command line interface.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hledger-web = {
            depends  = [
              hsPkgs.hledger
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.safe
              hsPkgs.io-storage
              hsPkgs.yesod
              hsPkgs.hamlet
              hsPkgs.failure
              hsPkgs.template-haskell
              hsPkgs.wai-extra
              hsPkgs.file-embed
            ];
          };
        };
      };
    }