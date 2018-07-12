{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskelldb-flat";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert";
        maintainer = "Maintainer: haskelldb-users@lists.sourceforge.net";
        author = "Bjorn Bringert";
        homepage = "https://github.com/m4dc4p/haskelldb";
        url = "";
        synopsis = "An experimental HaskellDB back-end in pure Haskell (no SQL)";
        description = "This is a very experimental HaskellDB back-end which is written in pure Haskell\nand doesn't use SQL. It stores the database in a file. Using this with\nconcurrent writes leads to data loss. This back-end does not support transactions.";
        buildType = "Simple";
      };
      components = {
        "haskelldb-flat" = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.haskelldb
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.old-time
              hsPkgs.directory
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          "DBDirect-flat" = {};
        };
      };
    }