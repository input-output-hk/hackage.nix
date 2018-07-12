{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "buildbox-tools";
          version = "1.5.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "Ben Lippmeier";
        homepage = "http://code.ouroborus.net/buildbox";
        url = "";
        synopsis = "Tools for working with buildbox benchmark result files.";
        description = "Tools for working with buildbox benchmark result files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "buildbox-results" = {
            depends  = [
              hsPkgs.base
              hsPkgs.buildbox
              hsPkgs.parseargs
            ];
          };
        };
      };
    }