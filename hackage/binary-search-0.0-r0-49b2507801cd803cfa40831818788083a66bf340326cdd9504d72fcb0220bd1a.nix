{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "binary-search"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "Ross Paterson <ross@soi.city.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "Binary and exponential searches";
      description = "These modules address the problem of finding the boundary\nof an upward-closed set of integers, using a combination\nof exponential and binary searches.  Variants are provided\nfor searching within bounded and unbounded intervals of\nboth 'Integer' and bounded integral types.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }