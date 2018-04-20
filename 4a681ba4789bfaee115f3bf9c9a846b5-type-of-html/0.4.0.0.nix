{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-of-html";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017, Florian Knupfer";
        maintainer = "fknupfer@gmail.com";
        author = "Florian Knupfer";
        homepage = "https://github.com/knupfer/type-of-html";
        url = "";
        synopsis = "High performance type driven html generation.";
        description = "This library makes most invalid html documents compile time errors and uses advanced type level features to realise compile time computations.";
        buildType = "Simple";
      };
      components = {
        type-of-html = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.type-of-html
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.type-of-html
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.blaze-html
              hsPkgs.criterion
            ];
          };
        };
      };
    }