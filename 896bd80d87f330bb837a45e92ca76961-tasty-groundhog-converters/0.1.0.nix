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
        name = "tasty-groundhog-converters";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Murphy <scottmurphy09@gmail.com>";
      author = "Scott Murphy <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tasty Tests for groundhog converters";
      description = "Groundhog converters are vulnerable to serialization changes.  Round trip tests and a SQLite test framework are provided\nto help correct this.";
      buildType = "Simple";
    };
    components = {
      "tasty-groundhog-converters" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.groundhog-converters)
          (hsPkgs.groundhog)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.groundhog-sqlite)
          (hsPkgs.groundhog-th)
          (hsPkgs.containers)
          (hsPkgs.bimap)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
        ];
      };
    };
  }