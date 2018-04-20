{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskelldb-hdbc";
          version = "2.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "The authors";
        maintainer = "haskelldb-users@lists.sourceforge.net";
        author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
        homepage = "https://github.com/m4dc4p/haskelldb";
        url = "";
        synopsis = "HaskellDB support for HDBC.";
        description = "HaskellDB requires this driver to work with any of HDBC's drivers.";
        buildType = "Simple";
      };
      components = {
        haskelldb-hdbc = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.haskelldb
            hsPkgs.HDBC
            hsPkgs.convertible
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.old-time
          ];
        };
      };
    }