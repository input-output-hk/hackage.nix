{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sum-type-boilerplate";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "David Reaver";
        homepage = "https://github.com/jdreaver/sum-type-boilerplate#readme";
        url = "";
        synopsis = "Library for reducing the boilerplate involved with sum types";
        description = "Library for reducing the boilerplate involved in creating and manipulating sum types";
        buildType = "Simple";
      };
      components = {
        "sum-type-boilerplate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
          "style" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.hlint
            ];
          };
        };
      };
    }