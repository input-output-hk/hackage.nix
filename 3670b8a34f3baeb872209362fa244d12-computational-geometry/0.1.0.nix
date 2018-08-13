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
      specVersion = "1.18";
      identifier = {
        name = "computational-geometry";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maksymilian.Owsianny@gmail.com";
      author = "Maksymilian Owsianny";
      homepage = "";
      url = "";
      synopsis = "Collection of algorithms in Computational Geometry.";
      description = "Collection of algorithms in Computational Geometry.";
      buildType = "Simple";
    };
    components = {
      "computational-geometry" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.linear)
          (hsPkgs.lens-family-core)
          (hsPkgs.ansi-wl-pprint)
        ];
      };
    };
  }