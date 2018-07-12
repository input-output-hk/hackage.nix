{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "debug-pp";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "All Rights Reserved";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "https://github.com/pepeiborra/debug-hoed-pp#readme";
        url = "";
        synopsis = "";
        description = "A preprocessor to automate the debug instrumentation of a module";
        buildType = "Simple";
      };
      components = {
        exes = {
          "debug-pp" = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }