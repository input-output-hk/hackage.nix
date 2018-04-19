{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "projectile";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "© 2017 Roman Gonzalez";
        maintainer = "romanandreg@gmail.com";
        author = "Roman Gonzalez";
        homepage = "https://github.com/roman/Haskell-projectile#readme";
        url = "";
        synopsis = "Go to README.md";
        description = "Utility functions to gather information about project directories";
        buildType = "Simple";
      };
      components = {
        projectile = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.text
            hsPkgs.deepseq
            hsPkgs.safe-exceptions
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.vector
          ];
        };
        tests = {
          projectile-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.deepseq
              hsPkgs.safe-exceptions
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.vector
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-rerun
              hsPkgs.projectile
            ];
          };
        };
      };
    }