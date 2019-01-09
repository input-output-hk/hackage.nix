{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-quickcheck-laws"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Automattic, Inc.";
      maintainer = "nathan.bloomfield@a8c.com";
      author = "Nathan Bloomfield";
      homepage = "https://github.com/nbloomf/tasty-quickcheck-laws#readme";
      url = "";
      synopsis = "Pre-built tasty trees for checking lawful class properties using QuickCheck";
      description = "Please see the README on GitHub at <https://github.com/nbloomf/tasty-quickcheck-laws#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.tasty)
          (hsPkgs.tasty-quickcheck)
          ];
        };
      exes = {
        "tasty-quickcheck-laws-demo" = {
          depends = [ (hsPkgs.base) (hsPkgs.tasty-quickcheck-laws) ];
          };
        };
      tests = {
        "tasty-quickcheck-laws-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty-quickcheck-laws)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            ];
          };
        };
      };
    }