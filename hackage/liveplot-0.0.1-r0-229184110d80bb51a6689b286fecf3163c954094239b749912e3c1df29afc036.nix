{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "liveplot";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "";
      url = "";
      synopsis = "Liveplotting";
      description = "Live plotting with OpenGL. This Haskell library allows feeding live data via Pipes to OpenGL plots.";
      buildType = "Simple";
    };
    components = {
      "liveplot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.andromeda)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.GLFW-b)
          (hsPkgs.GLUtil)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mvc)
          (hsPkgs.OpenGL)
          (hsPkgs.pipes)
          (hsPkgs.pipes-misc)
          (hsPkgs.pipes-extras)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.Vec)
          (hsPkgs.vector)
          (hsPkgs.vinyl)
          (hsPkgs.vinyl-gl)
        ];
      };
      exes = {
        "liveplot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.liveplot)
          ];
        };
      };
    };
  }