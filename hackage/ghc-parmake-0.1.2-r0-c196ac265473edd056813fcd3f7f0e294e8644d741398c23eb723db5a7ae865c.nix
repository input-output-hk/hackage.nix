{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ghc-parmake"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "the.dead.shall.rise@gmail.com";
      author = "Mikhail Glushenkov";
      homepage = "https://github.com/23Skidoo/ghc-parmake";
      url = "";
      synopsis = "A parallel wrapper for 'ghc --make'.";
      description = "'ghc-parmake' is a parallel wrapper for 'ghc --make'\nintended to work as its drop-in replacement. It can\nbuild your Haskell program in parallel using multiple\ncores.\n'ghc-parmake' works by extracting a module dependency\ngraph with 'ghc -M' and then running multiple 'ghc -c'\nprocesses in parallel.\nTo set the number of concurrent jobs, use the '-j'\noption.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          ];
        };
      exes = {
        "ghc-parmake" = {
          depends = [
            (hsPkgs.ghc-parmake)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.ghc-parmake)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }