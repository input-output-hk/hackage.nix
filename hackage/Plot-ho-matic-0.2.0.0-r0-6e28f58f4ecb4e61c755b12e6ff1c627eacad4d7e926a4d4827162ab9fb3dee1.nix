{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Plot-ho-matic";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Real-time line plotter for protobuf-like data";
      description = "Plot-ho-matic provides real-time plotting of time-series data with a simple interface.\n\nChangelo";
      buildType = "Simple";
    };
    components = {
      "Plot-ho-matic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protocol-buffers)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.Chart)
          (hsPkgs.time)
          (hsPkgs.data-accessor)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
        ];
      };
    };
  }