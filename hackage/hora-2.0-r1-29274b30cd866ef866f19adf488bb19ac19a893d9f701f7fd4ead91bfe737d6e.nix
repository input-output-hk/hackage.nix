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
        name = "hora";
        version = "2.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://github.com/ciez/hora";
      url = "";
      synopsis = "date time";
      description = "! misses test files. Use a more recent version";
      buildType = "Simple";
    };
    components = {
      "hora" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.timezone-series)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
            (hsPkgs.timezone-series)
            (hsPkgs.timezone-olson)
            (hsPkgs.binary)
          ];
        };
      };
    };
  }