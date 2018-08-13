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
        name = "data-lens-ixset";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dag.odenhall@gmail.com";
      author = "Dag Odenhall";
      homepage = "https://github.com/dag/data-lens-ixset";
      url = "";
      synopsis = "A Lens for IxSet";
      description = "Integrates Data.IxSet with Data.Lens.";
      buildType = "Simple";
    };
    components = {
      "data-lens-ixset" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-lens)
          (hsPkgs.ixset)
        ];
      };
      exes = {
        "test-data-lens-ixset" = {
          depends  = [
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }