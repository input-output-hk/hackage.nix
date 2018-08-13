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
        name = "rivet-core";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "http://github.com/dbp/rivet";
      url = "";
      synopsis = "Database migration library; core functionality.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "rivet-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "rivet-core-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rivet-core)
          ];
        };
      };
    };
  }