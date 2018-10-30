{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Plot-ho-matic";
        version = "0.9.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2015, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Real-time line plotter for generic data";
      description = "Plot-ho-matic provides real-time plotting of time-series data with a simple interface ('addHistoryChannel').\nThere is also a more general interface to plot arbitrary data ('addChannel').\n\nSee the example on <http://www.github.com/ghorn/Plot-ho-matic> to help get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.data-default-class)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          (hsPkgs.time)
          (hsPkgs.Chart)
          (hsPkgs.Chart-cairo)
          (hsPkgs.cairo)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.generic-accessors)
        ];
      };
      exes = {
        "plot-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Plot-ho-matic)
            (hsPkgs.containers)
          ];
        };
        "set-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Plot-ho-matic)
            (hsPkgs.generic-accessors)
          ];
        };
      };
    };
  }