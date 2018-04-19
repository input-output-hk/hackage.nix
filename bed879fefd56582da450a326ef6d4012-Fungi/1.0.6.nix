{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Fungi";
          version = "1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "https://github.com/thomaseding/fungi";
        url = "";
        synopsis = "Funge-98 interpreter written in Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          fungi = {
            depends  = [
              hsPkgs.mwc-random
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.bytestring
              hsPkgs.ListZipper
              hsPkgs.random
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.tuple
              hsPkgs.base
            ];
          };
        };
      };
    }