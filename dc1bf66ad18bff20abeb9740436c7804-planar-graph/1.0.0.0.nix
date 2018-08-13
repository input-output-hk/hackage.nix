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
      specVersion = "1.6";
      identifier = {
        name = "planar-graph";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "A representation of planar graphs";
      description = "Planar graphs are graphs that can be embedded onto a surface\n(i.e. they can be drawn on that surface without any edges crossing).\nAs such, it is preferable to use a dedicated data structure for them\nthat has information about how to achieve this embedding rather than a\nstandard graph data structure.\n\n(Please note however that this implementation has only been tested in\nterms of the embedding being on the unit sphere or disc; whether it\nworks or not as-is on any other type of surface is unknown.)";
      buildType = "Simple";
    };
    components = {
      "planar-graph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-clist)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }