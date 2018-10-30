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
        version = "0.4.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2014, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Real-time line plotter for protobuf-like data";
      description = "Plot-ho-matic provides real-time plotting of time-series data with a simple interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.data-default-class)
          (hsPkgs.stm)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.time)
          (hsPkgs.Chart)
          (hsPkgs.Chart-cairo)
          (hsPkgs.linear)
          (hsPkgs.text)
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