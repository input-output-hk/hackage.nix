{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "readme-lhs";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/readme-lhs";
        url = "";
        synopsis = "See readme.lhs";
        description = "See readme.lhs";
        buildType = "Simple";
      };
      components = {
        readme-lhs = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.foldl
            hsPkgs.text
            hsPkgs.attoparsec
          ];
        };
        exes = {
          lhs = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.readme-lhs
              hsPkgs.optparse-applicative
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.containers
            ];
          };
          readme = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.foldl
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.tasty
              hsPkgs.HUnit
              hsPkgs.tasty-hunit
              hsPkgs.readme-lhs
              hsPkgs.text
            ];
          };
        };
      };
    }