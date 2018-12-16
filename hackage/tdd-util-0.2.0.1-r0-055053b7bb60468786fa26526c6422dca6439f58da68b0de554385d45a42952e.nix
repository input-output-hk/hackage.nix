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
        name = "tdd-util";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Byron James Johnson";
      maintainer = "Byron James Johnson <ByronJohnsonFP@gmail.com>";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "Test framework wrapper";
      description = "tdd-util is a small test framework for TDD (cf.\n<https://en.wikipedia.org/wiki/Test-driven_development>) that integrates\nthree testing libraries, whose modules are all exported under\n\"Test.Util.Framework\", while providing utilities based on each of these,\nexported under \"Test.Util\", by wrapping the library @test-framework@.\n\n/Getting Started/\n\nTo get started, an example that uses this library is this library's test\nsuite itself and can be found at\n<https://github.com/bairyn/tdd-util/tree/master/testsrc>.  Each module under\n@src@ corresponds with a module under @testsrc\\/Test@ that contains the tests\nfor that module.  (For example, this library currently exports two modules in\n@src\\/Test\\/Util.hs@ and @src\\/Test\\/Util\\/Framework.hs@; their tests are located,\nrespectively, in @testsrc\\/Test\\/Test\\/Util.hs@ and\n@testsrc\\/Test\\/Test\\/Util\\/Framework.hs@; and a module in @src\\/Data\\/Trie.hs@\nwould correspond with a test module in @testsrc\\/Test\\/Trie.hs@).  This structure can be conveniently\ncargo culted from this library, but these conventions are not enforced.\n\n/Test Modules/\n\nConventially, each module in @src\\/X.hs@ corresponds with a module that contains\ntests for that module located at @testsrc\\/Test\\/X.hs@.  None of these Test\nmodules depend on each other by importing them.  For a concrete example of\nsuch a test module, see <https://github.com/bairyn/tdd-util/blob/master/testsrc/Test/Test/Util.hs>.\n\nEach test module exports a list of @test-framework@\\'s 'TTest's (an alias to\ndisambiguate between @Test@ types from different libraries) named @tests@.\n\nThis list of tests can either be run individually by importing the test\nmodule, and then running @'defaultMain' tests@; or be grouped together in the\ntest-suite's @Tests@ module (see below).\n\nIn the tests themselves, very briefly, @'testGroup' \\\"Brief description of\ntest\\\" […]@ can be used to construct a single test-framework test ('TTest')\nfrom a group of other tests, @'testProperty' name prop_foo @ can be used to construct a\n'TTest' from a QuickCheck property, and @'testCase' name \$ do …@ can be used\nto construct a test from 'HUnit'.  See test-framework's\ndocumentation for more information about constructing QuickCheck and HUnit\nproperties.\n\nHere is a segment of code from\n<https://github.com/bairyn/tdd-util/blob/master/testsrc/Test/Test/Util.hs>:\n\n@\nmodule Test.Test.Util\n( tests\n) where\n\nimport Control.Applicative\n…\nimport Text.Printf\n\nimport Test.Util\nimport Test.Util.Framework\n…\ntests :: [TTest]\ntests =\n[ testGroup \\\"Throwing and catching exceptions - isExceptionThrown\\\" \$\n[ testCase \\\"throwing an exception\\\" \$ do\nthrown <- isExceptionThrown \$ do\nthrowIO \$ AssertionFailed \\\"assertion failed\\\"\nwhen (either (\\e -> flip const (e :: AssertionFailed) \$ False) (const True) \$ thrown) \$ do\nassertString \\\"exception NOT thrown\\\"\n, testCase \\\"not throwing an exception\\\" \$ do\nthrown <- isExceptionThrown \$ do\nreturn ()\nwhen (either (\\e -> flip const (e :: AssertionFailed) \$ True) (const False) \$ thrown) \$ do\nassertString \\\"exception thrown\\\"\n]\n, testGroup \\\"Throwing and catching exceptions - assert*Thrown\\\" \$\n…\n]\n…\n@\n\n/Tests.hs/\n\nEach test module is conventionally grouped into a single test module, at\n@testsrc\\/Tests.hs@ (e.g. see\n<https://github.com/bairyn/tdd-util/blob/master/testsrc/Tests.hs>), that\nexports a list of 'TTest's named @tests@.  Interactively, this test module\ncan be loaded in ghci, and the tests can be run as before, with @defaultMain\ntests@.\n\nThese tests can also be specified in the project's cabal file, by invoking\n@defaultMain@ on @tests@ in an external @Main.hs@ file under @testsrc@ (e.g.\nsee <https://github.com/bairyn/tdd-util/blob/master/testsrc/Main.hs>).\nRunning this @Main.hs@ will result in the test suite being run, so a\n@test-suite@ section can be added to the cabal file as it is in\n<https://github.com/bairyn/tdd-util/blob/master/tdd-util.cabal>.\n\nWhen a test suite is specified, cabal will recognized it and, when\nconfigured to do so, will run it when installing your package, resulting in\noutput that may look like this when it succeeds.\n\n@\nRunning 1 test suites...\nTest suite tdd-util-tests: RUNNING...\nTest suite tdd-util-tests: PASS\nTest suite logged to: dist\\/test\\/tdd-util-0.1.0.1-tdd-util-tests.log\n1 of 1 test suites (1 of 1 test cases) passed.\n@\n\nThis package's @Tests.hs@:\n\n@\nmodule Tests\n( tests\n) where\n\nimport Test.Util.Framework\n\nimport qualified Test.Test.Util\nimport qualified Test.Test.Util.Framework\n\ntests :: [TTest]\ntests =\n[ testGroup \\\"Test.Test.Util.tests\\\" \$ Test.Test.Util.tests\n, testGroup \\\"Test.Test.Util.Framework.tests\\\" \$ Test.Test.Util.Framework.tests\n]\n@\n\n/Main.hs Example/\n\n@Main.hs@ conventially defines a simple program that invokes @defaultMain\ntests@ from the test group that encapsulates the entire test suite in\n@Tests.hs@.  Here is this package's @Main.hs@ file:\n\n@\nmodule Main where\n\nimport Test.Util.Framework\n\nimport Tests\n\nmain :: IO ()\nmain = do\ndefaultMain tests\n@\n\n/Cabal Configuration/\n\nYour package's cabal configuration can be updated to point to\n@testsrc\\/Main.hs\\/@; here is a segment in this package's Cabal file that\ncontains part of the specification for the package's test suite:\n\n@\ntest-suite tdd-util-tests\ntype: exitcode-stdio-1.0\ndefault-language: Haskell2010\nhs-source-dirs: testsrc, src\nghc-options: -Wall -threaded\nmain-is: Main.hs\ndefault-extensions:\nGADTs\n,TemplateHaskell\n,DeriveDataTypeable\nbuild-depends:\n…\nother-modules:\nTests\n,Test.Test.Util\n,Test.Test.Util.Framework\n@\n\nNote that @tdd-util@ is the only TDD library one needs to depend on, if one\nonly uses @QuickCheck@, @HUnit@, and @test-framework@ via\n\"Test.Util.Framework\"; this omission is strictly optional, of course.\n\n/Test Running Example/\n\nHere is the output of importing @Test.Test.Util@ inside the @testsrc@\ndirectory and then running @tests@ on my system (note this is not the result\nof running the entire test suite; to do that, either run Main.hs or run, with\n'defaultMain', the @tests@ exported from @Tests.hs@ rather than\n@Test.Test.Util@), without the coloured formatting:\n\n@\n% ghci Test.Test.Util\nGHCi, version 7.6.1: http:\\/\\/www.haskell.org\\/ghc\\/  :? for help\nLoading package ghc-prim ... linking ... done.\nLoading package integer-gmp ... linking ... done.\nLoading package base ... linking ... done.\n[1 of 1] Compiling Test.Test.Util   ( Test\\/Test\\/Util.hs, interpreted )\nOk, modules loaded: Test.Test.Util.\n\n\\*Test.Test.Util> defaultMain tests\nLoading package pretty-1.1.1.0 ... linking ... done.\n…\nLoading package tdd-util-0.1.0.1 ... linking ... done.\nThrowing and catching exceptions - isExceptionThrown:\nthrowing an exception: [OK]\nnot throwing an exception: [OK]\nThrowing and catching exceptions - assert*Thrown:\nthrowing an exception: [OK]\nnot throwing an exception: [OK]\nisExceptionThrown -> assert*Thrown:\nApplying appropriate assert*Thrown given result of isExceptionThrown: [OK, passed 100 tests]\nTimed tests:\ntimeMicroseconds:\ntimeMicroseconds is accurate for random sleep times within 10ms: [OK, passed 100 tests]\ntimeMicroseconds is accurate for random delay times by timeout within 10ms: [OK, passed 100 tests]\ntimeoutMicroseconds behaves like timeout and throws exceptions appropriately:\ntimeoutMicroseconds overflow: [OK]\ntimeoutMicroseconds non-overflow: [OK]\nwaiting for a random amount of time from 0ms - 600ms; measured time difference is less than 10ms: [OK, passed 100 tests]\nassertMicroseconds:\ntimeoutMicroseconds -> assertMicroseconds (assert*Thrown): [OK, passed 100 tests]\ntimeoutProcessMicroseconds behaves like timeoutMicroseconds and throws exceptions appropriately:\ntimeoutProcessMicroseconds overflow: [OK]\ntimeoutProcessMicroseconds non-overflow: [OK]\nrandom sleep times and timeouts; return value is appropriate (NB: requires -threaded to work properly): [OK, passed 100 tests]\nassertProcessMicroseconds:\ntimeoutProcessMicroseconds -> assertProcessMicroseconds (assert*Thrown): [OK, passed 100 tests]\n\nProperties  Test Cases  Total\nPassed  7           8           15\nFailed  0           0           0\nTotal   7           8           15\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.transformers)
          (hsPkgs.tagged)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.parallel-io)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-quickcheck2)
        ];
      };
      tests = {
        "tdd-util-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.transformers)
            (hsPkgs.tagged)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.parallel-io)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }