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
      specVersion = "1.6";
      identifier = {
        name = "HUnit-Diff";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dag.odenhall@gmail.com";
      author = "Dag Odenhall";
      homepage = "https://github.com/dag/HUnit-Diff";
      url = "";
      synopsis = "Assertions for HUnit with difference reporting";
      description = "HUnit assertion operators that show a diff on failure.";
      buildType = "Simple";
    };
    components = {
      "HUnit-Diff" = {
        depends  = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.Diff)
          (hsPkgs.groom)
          (hsPkgs.HUnit)
        ];
      };
    };
  }