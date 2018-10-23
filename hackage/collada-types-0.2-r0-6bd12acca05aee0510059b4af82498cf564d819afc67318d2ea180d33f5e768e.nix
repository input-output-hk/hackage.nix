{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "collada-types";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Data exchange between graphic applications";
      description = "Collada is the standard graphics format for data exchange between 3d tools. As well as the file format also its representation as an algebraic data type could be used to make libraries more composable. Please propose changes.";
      buildType = "Simple";
    };
    components = {
      "collada-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.enumerable)
          (hsPkgs.tuple-gen)
        ];
      };
    };
  }