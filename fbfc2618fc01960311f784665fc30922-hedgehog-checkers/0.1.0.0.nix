{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hedgehog-checkers";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017, Chris Allen";
        maintainer = "cma@bitemyapp.com";
        author = "Chris Allen";
        homepage = "https://github.com/bitemyapp/hedgehog-checkers#readme";
        url = "";
        synopsis = "";
        description = "hedgehog-checkers wraps up the expected properties associated with various standard type classes as Hedgehog properties.";
        buildType = "Simple";
      };
      components = {
        hedgehog-checkers = {
          depends  = [
            hsPkgs.base
            hsPkgs.hedgehog
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.semigroupoids
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hedgehog
              hsPkgs.hedgehog-checkers
              hsPkgs.either
            ];
          };
        };
      };
    }