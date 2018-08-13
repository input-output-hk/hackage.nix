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
      specVersion = "0";
      identifier = {
        name = "hgal";
        version = "2.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy (google mail)";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "library for computation automorphism group and canonical labelling of a graph";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hgal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.array)
        ];
      };
    };
  }