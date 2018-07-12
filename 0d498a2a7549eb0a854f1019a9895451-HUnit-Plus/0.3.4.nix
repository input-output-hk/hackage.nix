{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "HUnit-Plus";
          version = "0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Eric McCorkle.  All rights reserved.";
        maintainer = "Eric McCorkle <emc2@metricspace.net>";
        author = "Eric McCorkle";
        homepage = "https://github.com/emc2/HUnit-Plus";
        url = "";
        synopsis = "A test framework building on HUnit.";
        description = "HUnit-Plus is a testing framework for Haskell that builds on the\nHUnit test framework.  HUnit-Plus provides functions and operators\nfor creating assertions and tests similar to those provided by the\nHUnit framework.  Unlike HUnit, HUnit-Plus uses the same data\nstructures as cabal's \"Distribution.TestSuite\" framework, allowing\nfull compatibility with cabal's testing facilities.\n\nHUnit-Plus also provides expanded reporting capabilities, including\nthe ability to generate JUnit-style XML reports, along with a very\nflexible mechanism for selecting which tests to be executed.\nLastly, HUnit-Plus provides a wrapper which generates standalone\ntest-execution programs from a set of test suites.\n\nThis is the fifth release candidate for 1.0.";
        buildType = "Simple";
      };
      components = {
        "HUnit-Plus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.hexpat
            hsPkgs.timeit
            hsPkgs.cmdargs
            hsPkgs.hashable
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.hostname
            hsPkgs.bytestring
            hsPkgs.parsec
          ];
        };
        tests = {
          "RunTests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.hexpat
              hsPkgs.timeit
              hsPkgs.cmdargs
              hsPkgs.hashable
              hsPkgs.containers
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.hostname
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.directory
            ];
          };
        };
      };
    }