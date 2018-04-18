{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bitcoin-script";
          version = "0.11.1";
        };
        license = "MIT";
        copyright = "(c) 2015 Leon Mergen";
        maintainer = "leon@solatis.com";
        author = "Leon Mergen";
        homepage = "http://www.leonmergen.com/opensource.html";
        url = "";
        synopsis = "Compilation, manipulation and decompilation of Bitcoin scripts";
        description = "Provides pure functions to compile, decompile and manipulate Bitcoin scripts.\nThis project relies heavily on the Haskoin project for the compiling and\ndecompiling of the script assembly, and continuously merges changes downstream.\nThe advantage this library has over Haskoin is that it uses very few\ndependencies and doesn't rely on external libraries such as LevelDB and snappy.";
        buildType = "Simple";
      };
      components = {
        bitcoin-script = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.binary
          ];
        };
        tests = {
          test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.bitcoin-script
            ];
          };
        };
      };
    }