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
      specVersion = "1.10";
      identifier = {
        name = "byteunits";
        version = "0.4.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrissound (Chris Stryczynski)";
      author = "chrissound (Chris Stryczynski)";
      homepage = "https://github.com/chrissound/byteunits#readme";
      url = "";
      synopsis = "Human friendly conversion between byte units (KB, MB, GB...)";
      description = "Human friendly conversion between byte units (KB, MB, GB...)...";
      buildType = "Simple";
    };
    components = {
      "byteunits" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
        ];
      };
      tests = {
        "testing-example" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.byteunits)
          ];
        };
      };
    };
  }