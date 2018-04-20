{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskelldb-dynamic";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "The authors";
        maintainer = "haskelldb-users@lists.sourceforge.net";
        author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
        homepage = "https://github.com/m4dc4p/haskelldb";
        url = "";
        synopsis = "HaskellDB support for the dynamically loaded drivers.";
        description = "";
        buildType = "Simple";
      };
      components = {
        haskelldb-dynamic = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.haskelldb
            hsPkgs.plugins
            hsPkgs.base
          ];
        };
        exes = {
          DBDirect-dynamic = {
            depends  = [ hsPkgs.haskelldb ];
          };
        };
      };
    }