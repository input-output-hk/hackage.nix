{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "haskelldb-hsql";
          version = "0.10";
        };
        license = "BSD-3-Clause";
        copyright = "The authors";
        maintainer = "haskelldb-users@lists.sourceforge.net";
        author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
        homepage = "";
        url = "";
        synopsis = "HaskellDB support for HSQL. You will also need one\nor more back-end specific packages.";
        description = "";
        buildType = "Custom";
      };
      components = {
        haskelldb-hsql = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskelldb
            hsPkgs.hsql
          ];
        };
      };
    }