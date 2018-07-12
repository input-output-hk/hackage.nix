{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sqsd-local";
          version = "0.1.0.0";
        };
        license = "MPL-2.0";
        copyright = "AllRightsReserved";
        maintainer = "oskar.wickstrom@gmail.com";
        author = "Oskar Wickström";
        homepage = "https://github.com/owickstrom/sqsd-local#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          "sqsd-local" = {
            depends  = [
              hsPkgs.amazonka
              hsPkgs.amazonka-sqs
              hsPkgs.base
              hsPkgs.case-insensitive
              hsPkgs.exceptions
              hsPkgs.lens
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.wreq
            ];
          };
        };
        tests = {
          "sqsd-local-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sqsd-local
            ];
          };
        };
      };
    }