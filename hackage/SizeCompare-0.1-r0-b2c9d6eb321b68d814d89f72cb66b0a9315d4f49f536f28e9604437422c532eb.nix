{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "SizeCompare";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "bschuur@cs.uu.nl";
      author = "Bram Schuur";
      homepage = "";
      url = "";
      synopsis = "Fast size comparison for standard containers.";
      description = "SizeCompare is a small library providing size comparison functions standard Haskell data-types.\nSize compare runs in O(min(n,m)) for both arguments, possibly faster.\nInstead of measuring both containers and comparing the result, SizeCompare iteratively deconstructs both\nsides of the equality equation until a conclusion can be made.\nA common expression like:\nlength xs > 0\nruns O(n) in the length of the list. Sizecompare runs (O(1)) in this particular case:\nxs |>| 0\nThis is still an initial version of the library and updates may follow after some more profiling.";
      buildType = "Simple";
    };
    components = {
      "SizeCompare" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }