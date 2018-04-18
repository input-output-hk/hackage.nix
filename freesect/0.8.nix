{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "freesect";
          version = "0.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Seniuk <rasfar@gmail.com>";
        author = "Andrew Seniuk";
        homepage = "http://fremissant.net/freesect";
        url = "";
        synopsis = "A Haskell syntax extension for generalised sections";
        description = "This package provides a preprocessor executable, \\'freesect\\', which\nimplements a broad generalisation of sections (dubbed \\'free sections\\')\nfor partial application and higher-order style.  Some examples\nof free sections can be found in the included test suite; refer\nto the homepage for more info.";
        buildType = "Simple";
      };
      components = {
        exes = {
          freesect = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.mtl
              hsPkgs.syb
              hsPkgs.parallel
              hsPkgs.cpphs
              hsPkgs.pretty
              hsPkgs.array
            ];
          };
        };
      };
    }