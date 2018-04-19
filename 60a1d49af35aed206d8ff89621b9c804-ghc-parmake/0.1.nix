{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ghc-parmake";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "the.dead.shall.rise@gmail.com";
        author = "Mikhail Glushenkov";
        homepage = "https://github.com/23Skidoo/ghc-parmake";
        url = "";
        synopsis = "A parallel wrapper for 'ghc --make'.";
        description = "'ghc-parmake' is a parallel wrapper for 'ghc --make': it\nis intended to work as its drop-in replacement. It can\nbuild your Haskell program in parallel using multiple\ncores.";
        buildType = "Simple";
      };
      components = {
        ghc-parmake = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
        exes = {
          ghc-parmake = {
            depends  = [
              hsPkgs.ghc-parmake
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.ghc-parmake
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }