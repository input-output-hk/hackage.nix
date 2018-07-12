{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clay";
          version = "0.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastiaan Visser <code@fvisser.nl>";
        author = "Sebastiaan Visser";
        homepage = "http://fvisser.nl/clay";
        url = "";
        synopsis = "CSS preprocessor as embedded Haskell.";
        description = "Clay is a CSS preprocessor like LESS and Sass, but implemented as an embedded\ndomain specific language (EDSL) in Haskell. This means that all CSS selectors\nand style rules are first class Haskell functions, which makes reuse and\ncomposability easy.\n\nThe project is described on <http://fvisser.nl/clay>.\n\nThe API documentation can be found in the top level module \"Clay\".";
        buildType = "Simple";
      };
      components = {
        "clay" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
        tests = {
          "Test-Clay" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.hspec-expectations
              hsPkgs.hspec
            ];
          };
        };
      };
    }