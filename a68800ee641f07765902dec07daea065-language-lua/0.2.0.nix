{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "language-lua";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "omeragacan@gmail.com";
        author = "Ömer Sinan Ağacan";
        homepage = "http://github.com/osa1/language-lua";
        url = "";
        synopsis = "Lua parser and pretty-printer";
        description = "Lua 5.2 lexer, parser and pretty-printer.\n\nChangelog:\n\n\\0.2.0:\n\n- Syntax tree is annotated. All parsers(`parseText`, `parseFile`) annotate resulting tree with source positions.";
        buildType = "Simple";
      };
      components = {
        language-lua = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.array
          ];
        };
      };
    }