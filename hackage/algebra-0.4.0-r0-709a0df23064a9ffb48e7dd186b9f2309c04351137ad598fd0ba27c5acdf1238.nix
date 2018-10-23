{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "algebra";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/algebra/";
      url = "";
      synopsis = "Constructive abstract algebra";
      description = "Constructive abstract algebra";
      buildType = "Simple";
    };
    components = {
      "algebra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.tagged)
          (hsPkgs.categories)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.reflection)
          (hsPkgs.representable-tries)
          (hsPkgs.void)
        ];
      };
    };
  }