{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-files-gen";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 JP Moresmau";
        maintainer = "jp@moresmau.fr";
        author = "JP Moresmau";
        homepage = "https://github.com/JPMoresmau/data-files-gen#readme";
        url = "";
        synopsis = "Generate data-files Cabal file field from existing files";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        data-files-gen = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.data-default
          ];
        };
        exes = {
          data-files-gen = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-files-gen
              hsPkgs.containers
              hsPkgs.data-default
            ];
          };
        };
        tests = {
          data-files-gen-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-files-gen
              hsPkgs.hspec
              hsPkgs.data-default
              hsPkgs.containers
            ];
          };
        };
      };
    }