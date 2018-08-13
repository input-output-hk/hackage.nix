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
        name = "gbu";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daneel S. Yaitskov <rtfm.rtfm.rtfm@gmail.com>";
      author = "Daneel S. Yaitskov <rtfm.rtfm.rtfm@gmail.com>";
      homepage = "http://www.daneel0yaitskov.000space.com";
      url = "";
      synopsis = "planar graph embedding into a plane";
      description = "A library realizes one of the graph visualization process's\nsteps - graph embedding into a plane. The job of the step is\nsuch to order nodes' edges that there are capabilities to\ndraw them without any intersections.";
      buildType = "Simple";
    };
    components = {
      "gbu" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fgl)
          (hsPkgs.Graphalyze)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.regex-posix)
          (hsPkgs.haskell98)
        ];
      };
    };
  }