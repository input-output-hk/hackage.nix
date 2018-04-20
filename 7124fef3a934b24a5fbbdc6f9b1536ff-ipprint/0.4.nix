{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "ipprint";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gleb.alexeev@gmail.com";
        author = "Gleb Alexeyev";
        homepage = "";
        url = "";
        synopsis = "Tiny helper for pretty-printing values in ghci console";
        description = "Tiny helper for pretty-printing values in ghci console\n\nUsage example:\n\n>Prelude> let e = replicate 5 [1..14] -- value we want to print\n>Prelude> :m + IPPrint\n>Prelude IPPrint> pprint e\n>   [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],\n>    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],\n>    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],\n>    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],\n>    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]]\n\nTerminal width support added by Jean-Marie Gaillourdet.";
        buildType = "Simple";
      };
      components = {
        ipprint = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src
            hsPkgs.base
            hsPkgs.Extra
          ];
        };
      };
    }