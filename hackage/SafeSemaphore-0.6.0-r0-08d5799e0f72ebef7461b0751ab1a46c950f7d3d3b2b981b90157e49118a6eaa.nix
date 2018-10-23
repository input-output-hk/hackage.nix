{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "SafeSemaphore";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Kuklewicz <haskell@list.mightyreason.com>";
      author = "Chris Kuklewicz <haskell@list.mightyreason.com>";
      homepage = "http://hackage.haskell.org/package/SafeSemaphore";
      url = "";
      synopsis = "Much safer replacement for QSemN, QSem, and SampleVar";
      description = "This provides a much safer semaphore than the QSem in base.  Performance has not been compared.  In the source is a tests/TestKillSem.hs executable (run by cabal test) that shows the problem with QSem.";
      buildType = "Simple";
    };
    components = {
      "SafeSemaphore" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "TestSafeSemaphore" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }