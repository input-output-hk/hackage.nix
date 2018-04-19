{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-category";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/pipes-category#readme";
        url = "";
        synopsis = "Allows instances for Category, Arrow and ArrowChoice for Pipes.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pipes-category = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.pipes
            hsPkgs.pipes-extras
          ];
        };
        exes = {
          pipes-category-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.pipes-category
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          pipes-category-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-category
            ];
          };
        };
      };
    }