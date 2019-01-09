{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitcoin-script"; version = "0.9.1"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://github.com/solatis/haskell-bitcoin-script";
      url = "";
      synopsis = "Compilation, manipulation and decompilation of Bitcoin scripts";
      description = "Provides pure functions to compile, decompile and manipulate Bitcoin scripts.\nThis project relies heavily on the Haskoin project for the compiling and\ndecompiling of the script assembly, and continuously merges changes downstream.\nThe advantage this library has over Haskoin is that it uses very few\ndependencies and doesn't rely on external libraries such as LevelDB and snappy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
          ];
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.bytestring)
            (hsPkgs.bitcoin-script)
            ];
          };
        };
      };
    }