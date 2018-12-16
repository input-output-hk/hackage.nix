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
        name = "MuCheck-SmallCheck";
        version = "0.2.1.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.smallcheck)
          (hsPkgs.MissingH)
          (hsPkgs.MuCheck)
        ];
      };
      exes = {
        "mucheck-smallcheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.smallcheck)
            (hsPkgs.MissingH)
            (hsPkgs.MuCheck)
          ];
        };
      };
    };
  }