let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "mpi-hs-cereal"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Erik Schnetter <schnetter@gmail.com>";
      author = "Erik Schnetter <schnetter@gmail.com>";
      homepage = "https://github.com/eschnett/mpi-hs-cereal#readme";
      url = "";
      synopsis = "MPI bindings for Haskell";
      description = "MPI (the [Message Passinag Interface](https://www.mpi-forum.org)) is\na widely used standard for distributed-memory programming on HPC\n(High Performance Computing) systems. MPI allows exchanging data\n(_messages_) between programs running in parallel. There are several\nhigh-quality open source MPI implementations (e.g. MPICH, MVAPICH,\nOpenMPI) as well as a variety of closed-source implementations.\nThese libraries can typically make use of high-bandwidth low-latency\ncommunication hardware such as InfiniBand.\n\nThis library @mpi-hs@ provides Haskell bindings for MPI. It is based\non ideas taken from\n[haskell-mpi](https://github.com/bjpop/haskell-mpi),\n[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html)\nfor C++, and [MPI for\nPython](https://mpi4py.readthedocs.io/en/stable/).\n\n@mpi-hs@ provides two API levels: A low-level API gives rather\ndirect access to the actual MPI API, apart from certain \"reasonable\"\nmappings from C to Haskell (e.g. output arguments that are in C\nstored via a pointer are in Haskell regular return values). A\nhigh-level API simplifies exchanging arbitrary values that can be\nserialized.\n\nNote that the automated builds on\n[Hackage](http://hackage.haskell.org) will currently always fail\nsince no system MPI library is present there. However, builds on\n[Stackage](https://www.stackage.org) should succeed -- if not, there\nis an error in this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mpi-hs" or (buildDepError "mpi-hs"))
          ];
        buildable = true;
        };
      exes = {
        "example1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mpi-hs" or (buildDepError "mpi-hs"))
            ];
          buildable = true;
          };
        "example2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mpi-hs-cereal" or (buildDepError "mpi-hs-cereal"))
            ];
          buildable = true;
          };
        "version" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mpi-hs" or (buildDepError "mpi-hs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "mpi-test-cereal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mpi-hs-cereal" or (buildDepError "mpi-hs-cereal"))
            ];
          buildable = true;
          };
        };
      };
    }