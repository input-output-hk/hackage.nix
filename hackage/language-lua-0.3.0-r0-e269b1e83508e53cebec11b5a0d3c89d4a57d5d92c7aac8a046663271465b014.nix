{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "language-lua";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omeragacan@gmail.com";
      author = "Ömer Sinan Ağacan";
      homepage = "http://github.com/osa1/language-lua";
      url = "";
      synopsis = "Lua parser and pretty-printer";
      description = "Lua 5.2 lexer, parser and pretty-printer. Documentation: (<https://osa1.github.com/language-lua>)\n\nChangelog:\n\\0.3.0:\n\n- Added non-annotated syntax to make code-generation easier.\n\n\\0.2.3:\n\n- Minor internal changes.\n\n\\0.2.2:\n\n- Some tweaks in pretty-printer.\n\n\\0.2.0:\n\n- Syntax tree is annotated. All parsers(`parseText`, `parseFile`) annotate resulting tree with source positions.";
      buildType = "Simple";
    };
    components = {
      "language-lua" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.array)
        ];
      };
    };
  }