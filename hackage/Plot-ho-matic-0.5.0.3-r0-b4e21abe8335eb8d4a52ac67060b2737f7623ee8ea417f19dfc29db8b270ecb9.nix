{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Plot-ho-matic";
        version = "0.5.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2014, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Real-time line plotter for protobuf-like data";
      description = "Plot-ho-matic provides real-time plotting of time-series data with a simple interface ('addHistoryChannel').\nThere is also a more general interface to plot arbitrary data ('addChannel').\n\nSee the example on <http://www.github.com/ghorn/Plot-ho-matic> to help get started.";
      buildType = "Simple";
    };
    components = {
      "Plot-ho-matic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.data-default-class)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.time)
          (hsPkgs.Chart)
          (hsPkgs.Chart-cairo)
          (hsPkgs.cairo)
          (hsPkgs.text)
          (hsPkgs.generic-accessors)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Plot-ho-matic)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }