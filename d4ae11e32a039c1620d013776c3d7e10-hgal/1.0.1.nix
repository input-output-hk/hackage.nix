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
        version = "1.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy (google mail)";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "library for computation automorphism group and canonical labelling of a graph";
      description = "";
      buildType = "Custom";
    };
    components = {
      "hgal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }