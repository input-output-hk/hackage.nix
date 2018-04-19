{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "random";
          version = "1.0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rrnewton@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "random number library";
        description = "This package provides a basic random number generation\nlibrary, including the ability to split random number\ngenerators.";
        buildType = "Simple";
      };
      components = {
        random = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
        tests = {
          T7936 = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
            ];
          };
          TestRandomRs = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
            ];
          };
          TestRandomIOs = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
            ];
          };
        };
      };
    }