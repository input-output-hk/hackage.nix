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
        name = "MuCheck-SmallCheck";
        version = "0.3.0.4";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Rahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/mucheck-smallcheck";
      url = "";
      synopsis = "Automated Mutation Testing for SmallCheck tests";
      description = "This package contains the test adapter for SmallCheck tests to use it with MuCheck";
      buildType = "Simple";
    };
    components = {
      "MuCheck-SmallCheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.smallcheck)
          (hsPkgs.MuCheck)
        ];
      };
      exes = {
        "mucheck-smallcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.smallcheck)
            (hsPkgs.MuCheck)
          ];
        };
      };
    };
  }