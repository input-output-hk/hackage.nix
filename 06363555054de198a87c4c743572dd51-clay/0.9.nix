{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clay";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastiaan Visser <code@fvisser.nl>";
        author = "Sebastiaan Visser";
        homepage = "http://fvisser.nl/clay";
        url = "";
        synopsis = "CSS preprocessor as embedded Haskell.";
        description = "Clay is a CSS preprocessor like LESS and Sass, but implemented as an embedded\ndomain specific language (EDSL) in Haskell. This means that all CSS selectors\nand style rules are first class Haskell functions, which makes reuse and\ncomposability easy.\n\nThe project is described on <http://fvisser.nl/clay>.\n\nThe API documentation can be found in the top level module \"Clay\".\n\n> 0.8 -> 0.9\n>  - Added list-style-type property.\n>  - Added some CSS3 selectors and pseudo-classes.\n>  - Added some missing HTML5 elements.\n>  - Added keyframes support.\n>  - Fixed bug in linear in transition.\n>  - Added Initial and Unset type classes.\n>  - Added animation related styling rules.\n>  - Restored old renderer.\n>  - Fixed bunch of warnings.\n>  - Added :last-child pseudo selector.\n>  - Stub test suite\n>  Thanks to Sergei Trofimovich, Levi Ad, Ian D. Bollinger, Ben Gamari and Oly Mi!";
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
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }