{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { no-lattices = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "datafix"; version = "0.0.0.1"; };
      license = "ISC";
      copyright = "© 2017 Sebastian Graf";
      maintainer = "sgraf1337@gmail.com";
      author = "Sebastian Graf";
      homepage = "https://github.com/sgraf812/datafix";
      url = "";
      synopsis = "Fixing data-flow problems";
      description = "Fixing data-flow problems in expression trees";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-toolkit or (pkgs.buildPackages.cabal-toolkit))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.pomaps)
          ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs.lattices);
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-toolkit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.containers)
            (hsPkgs.primitive)
            (hsPkgs.transformers)
            (hsPkgs.datafix)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.turtle)
            (hsPkgs.text)
            ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs.lattices)) ++ (pkgs.lib).optional (flags.no-lattices) (hsPkgs.pomaps);
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.QuickCheck)
            (hsPkgs.datafix)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-toolkit)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.primitive)
            (hsPkgs.transformers)
            (hsPkgs.datafix)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.turtle)
            (hsPkgs.text)
            ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs.lattices)) ++ (pkgs.lib).optional (flags.no-lattices) (hsPkgs.pomaps);
          };
        };
      };
    }