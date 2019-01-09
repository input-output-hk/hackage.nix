{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lifted-base-tf"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2012 Bas van Dijk, Anders Kaseorg";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk, Anders Kaseorg";
      homepage = "https://github.com/basvandijk/lifted-base";
      url = "";
      synopsis = "lifted IO operations from the base library";
      description = "@lifted-base@ exports IO operations from the base library lifted to\nany instance of 'MonadBase' or 'MonadBaseControl'.\n\nNote that not all modules from @base@ are converted yet. If\nyou need a lifted version of a function from @base@, just\nask me to add it or send me a patch.\n\nThe package includes a copy of the @monad-peel@ testsuite written\nby Anders Kaseorg The tests can be performed using @cabal test@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.basic) (hsPkgs.control) ];
        };
      tests = {
        "test-lifted-base" = {
          depends = [
            (hsPkgs.lifted-base)
            (hsPkgs.base)
            (hsPkgs.basic)
            (hsPkgs.control)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      benchmarks = {
        "bench-lifted-base" = {
          depends = [
            (hsPkgs.lifted-base)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.criterion)
            (hsPkgs.monad-control)
            (hsPkgs.monad-peel)
            ];
          };
        };
      };
    }