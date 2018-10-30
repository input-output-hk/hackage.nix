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
      specVersion = "1.2";
      identifier = {
        name = "colorize-haskell";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://github.com/yav/colorize-haskell";
      url = "";
      synopsis = "Highligt Haskell source";
      description = "Highligt Haskell source";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-lexer)
          (hsPkgs.ansi-terminal)
        ];
      };
      exes = {
        "hscolor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-lexer)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }