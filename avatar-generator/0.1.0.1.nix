{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "avatar-generator";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Keera Studios Ltd";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez";
        homepage = "http://github.com/keera-studios/avatar-generator";
        url = "";
        synopsis = "A simple random avatar icon generator";
        description = "A straightforward avatar image generator that produces 512x512\nrandom images.";
        buildType = "Simple";
      };
      components = {
        exes = {
          avatar-generator = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.JuicyPixels
            ];
          };
        };
      };
    }