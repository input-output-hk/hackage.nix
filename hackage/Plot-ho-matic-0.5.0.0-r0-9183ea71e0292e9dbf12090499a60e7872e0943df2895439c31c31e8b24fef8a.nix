{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Plot-ho-matic"; version = "0.5.0.0"; };
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
        depends = [
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
          (hsPkgs.cairo)
          (hsPkgs.linear)
          (hsPkgs.text)
          (hsPkgs.spatial-math)
          (hsPkgs.generic-accessors)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Plot-ho-matic)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }