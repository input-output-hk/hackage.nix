{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "format-status";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "";
        author = "George Rogers";
        homepage = "";
        url = "";
        synopsis = "A utility for writing the date to dzen2.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          format-status = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.data-concurrent-queue
            ];
          };
        };
      };
    }