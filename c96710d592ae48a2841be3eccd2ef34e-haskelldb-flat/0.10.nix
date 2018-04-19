{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "haskelldb-flat";
          version = "0.10";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert";
        maintainer = "bjorn@bringert.net";
        author = "Bjorn Bringert";
        homepage = "";
        url = "";
        synopsis = "An experimental HaskellDB back-end in pure Haskell (no SQL)";
        description = "This is a very experimental HaskellDB back-end which is written in pure Haskell\nand doesn't use SQL. It stores the database in a file. Using this with\nconcurrent writes leads to data loss. This back-end does not support transactions.";
        buildType = "Custom";
      };
      components = {
        haskelldb-flat = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskelldb
          ];
        };
        exes = {
          flatdb-create = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.haskelldb
            ];
          };
        };
      };
    }