{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm-fast = false;
      library = false;
      gold = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "madlang";
          version = "2.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016-2017 Vanessa McHale";
        maintainer = "vanessa.mchale@reconfigure.io";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/madlang#readme";
        url = "";
        synopsis = "Randomized templating language DSL";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        madlang = {
          depends  = [
            hsPkgs.base
            hsPkgs.megaparsec
            hsPkgs.text
            hsPkgs.optparse-applicative
            hsPkgs.template-haskell
            hsPkgs.MonadRandom
            hsPkgs.composition
            hsPkgs.composition-extra
            hsPkgs.directory
            hsPkgs.file-embed
            hsPkgs.random-shuffle
            hsPkgs.microlens
            hsPkgs.mtl
            hsPkgs.ansi-wl-pprint
            hsPkgs.containers
          ];
        };
        exes = {
          madlang = {
            depends  = [
              hsPkgs.base
              hsPkgs.madlang
            ];
          };
        };
        tests = {
          madlang-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.madlang
              hsPkgs.hspec
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.hspec-megaparsec
            ];
          };
        };
        benchmarks = {
          madlang-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.madlang
              hsPkgs.megaparsec
              hsPkgs.text
            ];
          };
        };
      };
    }