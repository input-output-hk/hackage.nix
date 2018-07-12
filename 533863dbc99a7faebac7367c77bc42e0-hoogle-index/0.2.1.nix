{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hoogle-index";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Ben Gamari";
        maintainer = "ben@smart-cactus.org";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/hoogle-index";
        url = "";
        synopsis = "Easily generate Hoogle indices for installed packages";
        description = "Easily generate Hoogle indices for installed packages";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hoogle-index" = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.errors
              hsPkgs.bytestring
              hsPkgs.temporary
              hsPkgs.Cabal
            ];
          };
        };
      };
    }