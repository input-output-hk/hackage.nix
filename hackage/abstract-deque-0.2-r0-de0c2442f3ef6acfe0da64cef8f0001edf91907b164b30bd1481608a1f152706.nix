{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { usecas = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "abstract-deque";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan R. Newton";
      homepage = "https://github.com/rrnewton/haskell-lockfree-queue/wiki";
      url = "";
      synopsis = "Abstract, parameterized interface to mutable Deques.";
      description = "An abstract interface to highly-parameterizable queues/deques.\n\nBackground: There exists a feature space for queues that extends between:\n\n* simple, single-ended, non-concurrent, bounded queues\n\n* double-ended, threadsafe, growable queues\n\n... with important points inbetween (such as\nthe queues used for work-stealing).\n\nThis package includes an interface for Deques that allows the\nprogrammer to use a single API for all of the above, while using the\ntype-system to select an efficient implementation given the\nrequirements (using type families).\n\nThis package also includes a simple reference implementation based\non 'IORef' and \"Data.Sequence\".";
      buildType = "Simple";
    };
    components = {
      "abstract-deque" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.HUnit)
        ] ++ pkgs.lib.optional (flags.usecas && (compiler.isGhc && compiler.version.ge "7.4") && !system.isWindows) (hsPkgs.IORefCAS);
      };
      tests = {
        "test-abstract-deque" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }