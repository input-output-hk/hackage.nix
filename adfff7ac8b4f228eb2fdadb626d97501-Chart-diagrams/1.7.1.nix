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
        name = "Chart-diagrams";
        version = "1.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "Jan Bracker, 2006-2014";
      maintainer = "Jan Bracker <jan.bracker@googlemail.com>";
      author = "Jan Bracker <jan.bracker@googlemail.com>";
      homepage = "https://github.com/timbod7/haskell-chart/wiki";
      url = "";
      synopsis = "Diagrams backend for Charts.";
      description = "Diagrams backend for Charts.";
      buildType = "Simple";
    };
    components = {
      "Chart-diagrams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.diagrams-postscript)
          (hsPkgs.SVGFonts)
          (hsPkgs.colour)
          (hsPkgs.blaze-markup)
          (hsPkgs.svg-builder)
          (hsPkgs.bytestring)
          (hsPkgs.operational)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.lens)
          (hsPkgs.Chart)
          (hsPkgs.text)
        ];
      };
    };
  }