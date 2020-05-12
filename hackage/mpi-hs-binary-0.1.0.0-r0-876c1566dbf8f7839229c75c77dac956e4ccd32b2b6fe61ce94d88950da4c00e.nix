{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "mpi-hs-binary"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Erik Schnetter <schnetter@gmail.com>";
      author = "Erik Schnetter <schnetter@gmail.com>";
      homepage = "https://github.com/eschnett/mpi-hs-binary#readme";
      url = "";
      synopsis = "MPI bindings for Haskell";
      description = "MPI (the [Message Passinag Interface](https://www.mpi-forum.org)) is\na widely used standard for distributed-memory programming on HPC\n(High Performance Computing) systems. MPI allows exchanging data\n(_messages_) between programs running in parallel. There are several\nhigh-quality open source MPI implementations (e.g. MPICH, MVAPICH,\nOpenMPI) as well as a variety of closed-source implementations.\nThese libraries can typically make use of high-bandwidth low-latency\ncommunication hardware such as InfiniBand.\n\nThis library @mpi-hs@ provides Haskell bindings for MPI. It is based\non ideas taken from\n[haskell-mpi](https://github.com/bjpop/haskell-mpi),\n[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html)\nfor C++, and [MPI for\nPython](https://mpi4py.readthedocs.io/en/stable/).\n\n@mpi-hs@ provides two API levels: A low-level API gives rather\ndirect access to the actual MPI API, apart from certain \"reasonable\"\nmappings from C to Haskell (e.g. output arguments that are in C\nstored via a pointer are in Haskell regular return values). A\nhigh-level API simplifies exchanging arbitrary values that can be\nserialized.\n\nNote that the automated builds on\n[Hackage](http://hackage.haskell.org) will currently always fail\nsince no system MPI library is present there. However, builds on\n[Stackage](https://www.stackage.org) should succeed -- if not, there\nis an error in this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mpi-hs" or (errorHandler.buildDepError "mpi-hs"))
          ];
        buildable = true;
        };
      exes = {
        "example1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mpi-hs" or (errorHandler.buildDepError "mpi-hs"))
            ];
          buildable = true;
          };
        "example2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mpi-hs-binary" or (errorHandler.buildDepError "mpi-hs-binary"))
            ];
          buildable = true;
          };
        "version" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mpi-hs" or (errorHandler.buildDepError "mpi-hs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "mpi-test-binary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mpi-hs-binary" or (errorHandler.buildDepError "mpi-hs-binary"))
            ];
          buildable = true;
          };
        };
      };
    }