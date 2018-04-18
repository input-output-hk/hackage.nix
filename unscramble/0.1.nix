{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unscramble";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "barebonesgraphics@gmail.com";
        author = "Joel Taylor";
        homepage = "";
        url = "";
        synopsis = "Solve Boggle-like word games";
        description = "Solve Boggle-like word games";
        buildType = "Simple";
      };
      components = {
        exes = {
          unscramble = {
            depends  = [
              hsPkgs.base
              hsPkgs.hashmap
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }