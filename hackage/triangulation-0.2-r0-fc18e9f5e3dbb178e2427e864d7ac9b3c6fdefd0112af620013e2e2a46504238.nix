{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "triangulation";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Joern Dinkla";
      homepage = "http://www.dinkla.net/";
      url = "";
      synopsis = "triangulation of polygons";
      description = "An implementation of a simple triangulation algorithm for polygons without crossings. The code is explained in this diploma thesis: <www.dinkla.net/download/GeomAlgHaskell.pdf>. The original author made a very big library that needs a long time to compile. Thats why only one algorithm was extracted and freed from a big net of inner dependencies and types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.collada-types)
        ];
      };
    };
  }