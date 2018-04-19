{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iconv-typed";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Alfredo Di Napoli";
        maintainer = "alfredo.dinapoli@gmail.com";
        author = "Alfredo Di Napoli";
        homepage = "https://github.com/adinapoli/iconv-typed#readme";
        url = "";
        synopsis = "Type safe iconv wrapper";
        description = "[Type safe iconv wrapper]\n\nAn experiment in bringing type safety to the <http://hackage.haskell.org/package/iconv iconv> package.\n\n[Usage Example]\n\nThis is almost a drop-in replacement. Compare the original code from `iconv`:\n\n> module Main where\n>\n> import Codec.Text.IConv\n>\n> main :: IO ()\n> main = print \$ convert \"UTF-8\" \"LATIN1\" \"hello\"\n\nWith the equivalent in `iconv-typed`:\n\n> module Main where\n>\n> import Codec.Text.IConv.Typed\n>\n> main :: IO ()\n> main = print \$ convert @\"UTF-8\" @\"LATIN1\" \"hello\"\n\nAs a result, this code will compile and run only if the passed encoding resolves to a supported\nencoding (as retrieved at compile time by calling \"iconv -l\"). For example, the following won't compile:\n\n> main = print \$ convert @\"UFT-8\" \"LATIN1\" \"hello\"\n\nAs `UFT` is mispelled.\n\nUsing GHC < 8.0 that doesn't supports `TypeInType`? No problem, we've got you covered!\n\n> module Main where\n>\n> import Codec.Text.IConv.Typed\n>\n> main :: IO ()\n> main = print \$ convert (E :: E \"UTF-8\") (E :: E \"LATIN1\") \"hello\"";
        buildType = "Simple";
      };
      components = {
        iconv-typed = {
          depends  = [
            hsPkgs.base
            hsPkgs.iconv
            hsPkgs.shelly
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.bytestring
          ];
        };
        tests = {
          iconv-typed-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.iconv-typed
            ];
          };
        };
      };
    }