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
      specVersion = "1.6";
      identifier = {
        name = "aivika-experiment-diagrams";
        version = "3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika-experiment-diagrams";
      url = "";
      synopsis = "Diagrams backend for the Aivika simulation library";
      description = "This package complements the Aivika and Aivika Experiment packages\nand it allows rendering the charts using the Chart-diagrams library,\ni.e. without using Cairo, which can be suitable for MS Windows.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.Chart)
          (hsPkgs.Chart-diagrams)
          (hsPkgs.aivika-experiment)
          (hsPkgs.aivika-experiment-chart)
        ];
      };
    };
  }