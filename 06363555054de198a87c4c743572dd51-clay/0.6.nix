{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "clay";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastiaan Visser <code@fvisser.nl>";
        author = "Sebastiaan Visser";
        homepage = "http://fvisser.nl/clay";
        url = "";
        synopsis = "CSS preprocessor as embedded Haskell.";
        description = "Clay is a CSS preprocessor like LESS and Sass, but implemented as an embedded\ndomain specific language (EDSL) in Haskell. This means that all CSS selectors\nand style rules are first class Haskell functions, which makes reuse and\ncomposability easy.\n\nThe project is described on <http://fvisser.nl/clay>.\n\nThe API documentation can be found in the top level module \"Clay\".\n\n> 0.5.1 -> 0.6\n>   - Simplified implementation of size rendering.\n>   - Implemented @font-face construct. By James Fisher.\n>   - Make hsl(a) colors actually print percentage values.\n>   - Changed the renderer to haul @font-face to the top level.";
        buildType = "Simple";
      };
      components = {
        clay = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
      };
    }