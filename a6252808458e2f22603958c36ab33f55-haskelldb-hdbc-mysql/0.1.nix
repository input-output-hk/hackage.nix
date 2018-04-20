{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskelldb-hdbc-mysql";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "The authors";
        maintainer = "haskelldb-users@lists.sourceforge.net";
        author = "Andrew Miller, Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
        homepage = "";
        url = "";
        synopsis = "HaskellDB support for the HDBC MySQL driver.";
        description = "haskelldb-hdbc-mysql allows the HDBC-mysql package to be used from HaskellDB. This means HaskellDB can be used with MySQL, without going through ODBC.";
        buildType = "Simple";
      };
      components = {
        haskelldb-hdbc-mysql = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskelldb
            hsPkgs.haskelldb-hdbc
            hsPkgs.HDBC
            hsPkgs.HDBC-mysql
          ];
        };
        exes = {
          DBDirect-hdbc-mysql = {};
        };
      };
    }