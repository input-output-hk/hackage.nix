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
      specVersion = "1.10";
      identifier = {
        name = "ring-buffer";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari <ben@smart-cactus.org>";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/ring-buffer";
      url = "";
      synopsis = "A concurrent, mutable ring-buffer";
      description = "A mutable ring-buffer implementation suitable for concurrent access.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.ring-buffer)
          ];
        };
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.vector)
            (hsPkgs.ring-buffer)
          ];
        };
      };
    };
  }