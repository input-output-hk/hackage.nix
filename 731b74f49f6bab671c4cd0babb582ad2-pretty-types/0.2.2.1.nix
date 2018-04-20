{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pretty-types";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Sven Heyll";
        maintainer = "sven.heyll@gmail.com";
        author = "Sven Heyll";
        homepage = "https://github.com/sheyll/pretty-types#readme";
        url = "";
        synopsis = "A small pretty printing DSL for complex types.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pretty-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.tagged
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.pretty-types
              hsPkgs.tagged
            ];
          };
        };
      };
    }