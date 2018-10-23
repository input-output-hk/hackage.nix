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
        name = "pipes-interleave";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/pipes-interleave";
      url = "";
      synopsis = "Interleave and merge streams of elements";
      description = "Interleave and merge streams of elements.";
      buildType = "Simple";
    };
    components = {
      "pipes-interleave" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pipes)
          (hsPkgs.heaps)
        ];
      };
    };
  }