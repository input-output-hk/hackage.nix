{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "random";
          version = "1.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rrnewton@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "random number library";
        description = "This package provides a random number library.";
        buildType = "Simple";
      };
      components = {
        "random" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }