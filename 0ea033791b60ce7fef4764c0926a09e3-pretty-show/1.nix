{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "pretty-show";
        version = "1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://wiki.github.com/yav/pretty-show";
      url = "";
      synopsis = "Tools for working with derived Show instances.";
      description = "We provide a library and an executable for\nworking with derived Show instances.  By using\nthe library, we can parse derived Show instances\ninto a generic data structure.  The tool uses\nthe library to produce human-readable versions\nof Show instances, which can be quite handy\nfor debugging Haskell programs.";
      buildType = "Simple";
    };
    components = {
      "pretty-show" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.haskell-lexer)
          (hsPkgs.pretty)
        ];
      };
      exes = {
        "ppsh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.haskell-lexer)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }