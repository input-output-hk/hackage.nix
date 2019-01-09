{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fuzzcheck"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@fpcomplete.com>";
      author = "John Wiegley";
      homepage = "https://github.com/fpco/fuzzcheck";
      url = "";
      synopsis = "A simple checker for stress testing monadic code";
      description = "A simple checker for stress testing monadic code";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          ];
        };
      tests = {
        "smoke" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.fuzzcheck)
            ];
          };
        };
      };
    }