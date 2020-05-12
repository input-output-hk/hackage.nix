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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bits-atomic"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gabriel Wicke <wicke@wikidev.net>";
      author = "Gabriel Wicke <wicke@wikidev.net>";
      homepage = "";
      url = "";
      synopsis = "Atomic bit operations on memory locations\nfor low-level synchronization";
      description = "Atomic operations including CAS (compare-and-swap), fetch & add and variants\nsuitable for low-level shared-memory synchronization.\n\nThe implementation is using GCC's builtin atomic operations (available in GCC >=\n4) in C wrappers called through the FFI. See these links for background:\n\n* GCC manual: <http://gcc.gnu.org/onlinedocs/gcc/Atomic-Builtins.html>\n\n* GCC wiki: <http://gcc.gnu.org/wiki/Atomic>\n\n/Portability/: This package is primarily developed on a Linux system, but\nshould work wherever GCC >= 4 is available. It has been confirmed as working\non OSX. On Windows, it should work with Cygwin but currently fails for\nvanilla Haskell-Platform 2010.1.0.0 as it still packages GCC 3.x. An\ninstaller for updated versions of GCC is available at\n<http://www.mingw.org/> and should make this package work in connection with\nHaskell-Platform. Feedback on compatibility would be appreciated.\n\n/Testing:/ The following commands can be used to compile and run the test suite:\n\n> cabal unpack bits-atomic && cd bits-atomic-* # if not yet locally available\n> cabal configure -ftest\n> cabal build\n> cabal test\n\n/Recent changes/:\n\n* 0.1.3: Documentation updates, especially on portability. No functional\nchanges.\n\n* 0.1.2: Avoid using System.FilePath in Setup.hs to fix build failure on hackage";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }