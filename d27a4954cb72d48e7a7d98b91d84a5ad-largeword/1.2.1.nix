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
      specVersion = "1.9.2";
      identifier = {
        name = "largeword";
        version = "1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz <dominic@steinitz.org>";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "Dominic Steinitz <dominic@steinitz.org>";
      homepage = "https://github.com/idontgetoutmuch/largeword";
      url = "";
      synopsis = "Provides Word128, Word192 and Word256 and a way of producing other large words if required.";
      description = "Provides Word128, Word192 and Word256 and a way of producing other large words if required.";
      buildType = "Simple";
    };
    components = {
      "largeword" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.largeword)
          ];
        };
      };
    };
  }