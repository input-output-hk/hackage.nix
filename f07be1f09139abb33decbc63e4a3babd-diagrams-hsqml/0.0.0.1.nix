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
      specVersion = "1.10";
      identifier = {
        name = "diagrams-hsqml";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/diagrams-hsqml";
      url = "";
      synopsis = "HsQML (Qt5) backend for Diagrams";
      description = "`diagrams-hsqml` is a `diagrams` backend painting on a QtQuick Canvas.\n\nTo use the package, you only need the main module \"Diagrams.Backend.HsQML\"\n\nExample usage and QML scripts provided in \"Diagrams.Backend.HsQML.Tutorial\"";
      buildType = "Simple";
    };
    components = {
      "diagrams-hsqml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.hsqml)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }