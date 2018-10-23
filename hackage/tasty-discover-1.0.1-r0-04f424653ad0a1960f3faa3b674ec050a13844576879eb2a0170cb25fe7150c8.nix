{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "tasty-discover";
        version = "1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2016 Luke Murphy";
      maintainer = "Luke Murphy <lukewm@riseup.net>";
      author = "Luke Murphy <lukewm@riseup.net>";
      homepage = "https://github.com/lwm/tasty-discover/";
      url = "";
      synopsis = "Test discovery for the tasty framework.";
      description = "Test discovery for the tasty framework.\nhttp://tasty-discover.readthedocs.io/en/latest/";
      buildType = "Simple";
    };
    components = {
      "tasty-discover" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.tasty)
          (hsPkgs.tasty-th)
          (hsPkgs.tasty-hunit)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.tasty-hspec)
        ];
      };
      exes = {
        "tasty-discover" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-th)
          ];
        };
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty-discover)
          ];
        };
      };
    };
  }