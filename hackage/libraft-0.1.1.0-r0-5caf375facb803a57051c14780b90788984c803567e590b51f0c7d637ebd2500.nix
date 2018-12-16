{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "libraft";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Adjoint Inc.";
      maintainer = "info@adjoint.io";
      author = "Adjoint Inc.";
      homepage = "https://github.com/adjoint-io/raft#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/adjoint-io/raft#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.concurrency)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.parsec)
          (hsPkgs.protolude)
          (hsPkgs.random)
          (hsPkgs.repline)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.word8)
        ];
      };
      exes = {
        "raft-example" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.concurrency)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.haskeline)
            (hsPkgs.libraft)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.parsec)
            (hsPkgs.protolude)
            (hsPkgs.random)
            (hsPkgs.repline)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.word8)
          ];
        };
      };
      tests = {
        "raft-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.concurrency)
            (hsPkgs.containers)
            (hsPkgs.dejafu)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.haskeline)
            (hsPkgs.hunit-dejafu)
            (hsPkgs.libraft)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.parsec)
            (hsPkgs.protolude)
            (hsPkgs.random)
            (hsPkgs.repline)
            (hsPkgs.tasty)
            (hsPkgs.tasty-dejafu)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.word8)
          ];
        };
      };
    };
  }