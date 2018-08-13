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
        name = "rset";
        version = "1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2017 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/rset";
      url = "";
      synopsis = "Range set";
      description = "Data structure that stores a set of ranges. It provides an\nAPI similar to the Data.Set module. Types stored in the\ndata structure have to be instances of Eq, Ord and Enum\ntypeclasses.";
      buildType = "Simple";
    };
    components = {
      "rset" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
        ];
      };
      tests = {
        "rset-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.rset)
            (hsPkgs.safe)
          ];
        };
      };
    };
  }