{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "simplex";
          version = "0.3.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "A simple markup language that translates to LaTeX";
        description = "A simple markup language that translates to LaTeX";
        buildType = "Simple";
      };
      components = {
        exes = {
          "simplex" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.split
              hsPkgs.regex-compat
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.random
            ];
          };
        };
      };
    }