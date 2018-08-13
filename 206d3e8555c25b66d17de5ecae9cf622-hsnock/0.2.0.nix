{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsnock";
        version = "0.2.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrdomino@gmail.com";
      author = "Steven Dee";
      homepage = "https://github.com/mrdomino/hsnock/";
      url = "";
      synopsis = "Nock 5K interpreter.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hsnock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.readline)
        ];
      };
      exes = {
        "hsnock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.readline)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.parsec)
            (hsPkgs.readline)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }