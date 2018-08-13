{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "hylolib";
        version = "1.3.1";
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
      "hylolib" = {
        depends  = [
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
          (hsPkgs.QuickCheck)
          (hsPkgs.QuickCheck)
          (hsPkgs.uniplate)
          (hsPkgs.uniplate)
        ];
      };
    };
  }