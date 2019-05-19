{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mpi-hs"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Erik Schnetter";
      author = "Erik Schnetter";
      homepage = "https://github.com/eschnett/mpi-hs#readme";
      url = "";
      synopsis = "MPI bindings for Haskell";
      description = "MPI (the [Message Passing Interface](https://www.mpi-forum.org)) is\nwidely used standard for distributed-memory programming on HPC (High\nPerformance Computing) systems. MPI allows exchanging data\n(_messages_) between programs running in parallel. There are several\nhigh-quality open source MPI implementations (e.g. MPICH, MVAPICH,\nOpenMPI) as well as a variety of closed-source implementations.\nThese libraries can typically make use of high-bandwidth low-latency\ncommunication hardware such as InfiniBand.\n\nThis library @mpi-hs@ provides Haskell bindings for MPI. It is based\non ideas taken from\n[haskell-mpi](https://github.com/bjpop/haskell-mpi),\n[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html),\nand [MPI for Python](https://mpi4py.readthedocs.io/en/stable/).\n\n@mpi-hs@ provides two API levels: A low-level API gives rather\ndirect access to the MPI API, apart from certain \"reasonable\"\nmappings from C to Haskell (e.g. output arguments that are in C\nstored to a pointer are in Haskell regular return values). A\nhigh-level API simplifies exchanging arbitrary values that can be\nserialized.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = [ (pkgs."mpi") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      exes = { "mpi-hs" = { depends = [ (hsPkgs.base) (hsPkgs.mpi-hs) ]; }; };
      tests = {
        "mpi-hs-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.monad-loops)
            (hsPkgs.mpi-hs)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
            (hsPkgs.unix)
            ];
          };
        };
      benchmarks = {
        "mpi-hs-benchmarks" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.mpi-hs) ];
          };
        };
      };
    }