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
      specVersion = "1.8";
      identifier = {
        name = "binary-search";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>";
      author = "Ross Paterson <ross@soi.city.ac.uk>, Takayuki Muranushi <muranushi@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Binary and exponential searches";
      description = "These modules address the problem of finding the boundary\nof an upward-closed set of integers, using a combination\nof exponential and binary searches.  Variants are provided\nfor searching within bounded and unbounded intervals of\nboth 'Integer' and bounded integral types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary-search)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }