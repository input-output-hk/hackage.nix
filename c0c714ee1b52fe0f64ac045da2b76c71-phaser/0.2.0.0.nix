{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "phaser";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "quick.dudley@gmail.com";
        author = "Jeremy List";
        homepage = "https://github.com/quickdudley/phaser";
        url = "";
        synopsis = "Incremental multiple pass parser library.";
        description = "A combinator library for incremental multiple pass parsers.\nMostly inspired by the Text.ParserCombinators.ReadP module in the Base package\nand the conduit package. It has similar capabilities to ReadP as well as\nmore detailed error reporting and the capacity for multiple passes (such as\nlexing and parsing)";
        buildType = "Simple";
      };
      components = {
        phaser = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
      };
    }