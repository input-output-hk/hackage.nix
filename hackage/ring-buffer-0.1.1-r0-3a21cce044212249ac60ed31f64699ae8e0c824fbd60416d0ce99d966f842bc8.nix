{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ring-buffer";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari <ben@smart-cactus.org>";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/ring-buffer";
      url = "";
      synopsis = "A concurrent, mutable ring-buffer";
      description = "A concurrent, mutable ring-buffer";
      buildType = "Simple";
    };
    components = {
      "ring-buffer" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
        ];
      };
    };
  }