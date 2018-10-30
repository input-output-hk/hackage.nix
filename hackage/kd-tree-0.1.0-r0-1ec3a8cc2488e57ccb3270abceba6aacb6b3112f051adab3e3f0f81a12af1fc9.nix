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
        name = "kd-tree";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari <bgamari@gmail.com>";
      maintainer = "bgamari@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/kd-tree";
      url = "";
      synopsis = "A simple k-d tree implementation";
      description = "A simple k-d tree implementation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.lens)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
    };
  }