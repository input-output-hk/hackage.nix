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
        name = "wraparound";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "christopher.howard@frigidcode.com";
      author = "Christopher Howard";
      homepage = "http://frigidcode.com";
      url = "";
      synopsis = "Convenient handling of points on a seamless 2-dimensional plane";
      description = "WrapAround helps you perform calculations involving points on a finite,\nunbounded plane, in which objects that move across one edge of the map\nappear on the other. Add points, calculate distance, and so forth\nwithout worrying about the edge cases and frustrating math mistakes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }