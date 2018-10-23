{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "MuCheck-QuickCheck";
        version = "0.2.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Rahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/mucheck-quickcheck";
      url = "";
      synopsis = "Automated Mutation Testing for QuickCheck tests";
      description = "This package contains the test adapter for QuickCheck tests to use it with MuCheck";
      buildType = "Simple";
    };
    components = {
      "MuCheck-QuickCheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.MuCheck)
        ];
      };
      exes = {
        "mucheck-quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.MuCheck)
          ];
        };
      };
    };
  }