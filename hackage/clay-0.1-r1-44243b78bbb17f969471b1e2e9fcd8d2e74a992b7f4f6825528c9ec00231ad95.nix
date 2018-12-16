{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "clay";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <code@fvisser.nl>";
      author = "Sebastiaan Visser";
      homepage = "http://sebastiaanvisser.github.com/clay";
      url = "";
      synopsis = "CSS preprocessor as embedded Haskell.";
      description = "Clay is a CSS preprocessor like LESS and Sass, but implemented as an embedded\ndomain specific language (EDSL) in Haskell. This means that all CSS selectors\nand style rules are first class Haskell functions, which makes reuse and\ncomposability easy.\n\nThe project is described on <http://sebastiaanvisser.github.com/clay>.\n\nThe API documentation can be found in the top level module \"Clay\".\n\n> 0.0.1 -> 0.1\n>   - Fixed bug in combined selector rendering.\n>   - Fixed bug in font familty fallback category rendering.\n>   - Added maxWidth and maxHeight.\n>   - Fixed example code.\n>   - Fixed overflowX/overflowY bug.\n>   - Added some show instance for debugging purposes.\n>   - Don't print the star (*) selector in the case of refinements.\n>   - Refinements applied to the top level magically introduce star selector.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
    };
  }