{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "numhask-prelude";
          version = "0.0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/numhask#readme";
        url = "";
        synopsis = "A numeric prelude";
        description = "A numeric prelude, combining protolude and numhask.";
        buildType = "Simple";
      };
      components = {
        numhask-prelude = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.numhask
            hsPkgs.protolude
            hsPkgs.tasty
            hsPkgs.tasty-quickcheck
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.numhask-prelude
              hsPkgs.tasty
            ];
          };
        };
      };
    }