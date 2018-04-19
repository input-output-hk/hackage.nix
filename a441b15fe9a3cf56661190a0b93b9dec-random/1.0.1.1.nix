{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "random";
          version = "1.0.1.1";
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
      };
    }