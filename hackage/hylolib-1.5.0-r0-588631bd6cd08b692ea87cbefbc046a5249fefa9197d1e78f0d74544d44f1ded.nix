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
      specVersion = "1.22";
      identifier = {
        name = "hylolib";
        version = "1.5.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dgorin@dc.uba.ar";
      author = "Daniel Gorin";
      homepage = "";
      url = "";
      synopsis = "Tools for hybrid logics related programs";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.pretty)
          (hsPkgs.random)
          (hsPkgs.random)
          (hsPkgs.uniplate)
          (hsPkgs.uniplate)
        ];
      };
    };
  }