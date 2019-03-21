{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libraft"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Adjoint Inc.";
      maintainer = "info@adjoint.io";
      author = "Adjoint Inc.";
      homepage = "https://github.com/adjoint-io/raft#readme";
      url = "";
      synopsis = "Raft consensus algorithm";
      description = "Please see the README on GitHub at <https://github.com/adjoint-io/raft#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.atomic-write)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.concurrency)
          (hsPkgs.containers)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.dejafu)
          (hsPkgs.directory)
          (hsPkgs.ekg)
          (hsPkgs.ekg-core)
          (hsPkgs.exceptions)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-metrics)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.parsec)
          (hsPkgs.postgresql-simple)
          (hsPkgs.protolude)
          (hsPkgs.random)
          (hsPkgs.repline)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.word8)
          ];
        };
      exes = {
        "raft-example" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.atomic-write)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.concurrency)
            (hsPkgs.containers)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.dejafu)
            (hsPkgs.directory)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.exceptions)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.libraft)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.monad-metrics)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-simple-url)
            (hsPkgs.protolude)
            (hsPkgs.random)
            (hsPkgs.repline)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.word8)
            ];
          };
        };
      tests = {
        "raft-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.atomic-write)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.concurrency)
            (hsPkgs.containers)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.dejafu)
            (hsPkgs.directory)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.exceptions)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.libraft)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.monad-metrics)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.parsec)
            (hsPkgs.postgresql-simple)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.quickcheck-state-machine)
            (hsPkgs.random)
            (hsPkgs.repline)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-dejafu)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.tree-diff)
            (hsPkgs.unordered-containers)
            (hsPkgs.word8)
            ];
          };
        };
      };
    }