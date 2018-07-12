{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "clay";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastiaan Visser <code@fvisser.nl>";
        author = "Sebastiaan Visser";
        homepage = "http://fvisser.nl/clay";
        url = "";
        synopsis = "CSS preprocessor as embedded Haskell.";
        description = "Clay is a CSS preprocessor like LESS and Sass, but implemented as an embedded\ndomain specific language (EDSL) in Haskell. This means that all CSS selectors\nand style rules are first class Haskell functions, which makes reuse and\ncomposability easy.\n\nThe project is described on <http://fvisser.nl/clay>.\n\nThe API documentation can be found in the top level module \"Clay\".\n\n> 0.3 -> 0.4\n>   - Added dynamic presentation. (thanks to chrisdone)\n>   - Float now has its own value, don't incorrectly share side. (thanks to chrisdone)\n>   - Added nil size constructor.\n>   - Slightly improved the gradient syntax.\n>   - Expose the Propery module by default.\n>   - Introduced shared 'all' value.";
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
      };
    }