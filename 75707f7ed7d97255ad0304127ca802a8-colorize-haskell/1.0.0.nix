{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "colorize-haskell";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "iavor.diatchki@gmail.com";
        author = "Iavor S. Diatchki";
        homepage = "http://github.com/yav/hscolor";
        url = "";
        synopsis = "Highligt Haskell source";
        description = "TODO";
        buildType = "Simple";
      };
      components = {
        colorize-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-lexer
            hsPkgs.ansi-terminal
          ];
        };
        exes = {
          hscolor = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-lexer
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }