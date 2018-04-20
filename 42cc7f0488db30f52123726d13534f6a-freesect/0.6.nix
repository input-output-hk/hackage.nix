{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "freesect";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Seniuk <rasfar@gmail.com>";
        author = "Andrew Seniuk <rasfar@gmail.com>";
        homepage = "http://fremissant.net/freesect";
        url = "";
        synopsis = "A Haskell syntax extension for generalised sections.";
        description = "This package provides a preprocessor executable, \\'freesect\\',\nwhich implements a generalisation of sections (\\'free sections\\')\nfor partial application and higher-order style.  Some examples\nof free sections can be found in the included test suite; refer\nto the homepage for more info.";
        buildType = "Custom";
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