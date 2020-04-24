{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "SafeSemaphore"; version = "0.5.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "TestSafeSemaphore" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SafeSemaphore" or ((hsPkgs.pkgs-errors).buildDepError "SafeSemaphore"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }