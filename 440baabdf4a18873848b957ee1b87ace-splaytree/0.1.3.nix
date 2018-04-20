{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "splaytree";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jwlato@gmail.com";
        author = "John W. Lato";
        homepage = "http://www.tiresiaspress.us/~jwlato/haskell/splaytree";
        url = "";
        synopsis = "Provides an annotated splay tree";
        description = "Annotated splay trees (compare to 2-3 finger trees)";
        buildType = "Simple";
      };
      components = {
        splaytree = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }