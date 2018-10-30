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
        name = "vector-space-points";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2012 Brent Yorgey";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "A type for points, as distinct from vectors.";
      description = "A type for points, as distinct from vectors, built on top\nof Data.AffineSpace.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector-space)
        ];
      };
    };
  }