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
        name = "gelatin";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "";
      url = "";
      synopsis = "An experimental real time renderer.";
      description = "gelatin is a very experimental real time rendering\nengine for 2d graphics. It is backed by opengl 3.2.";
      buildType = "Simple";
    };
    components = {
      "gelatin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.gl)
          (hsPkgs.GLFW-b)
          (hsPkgs.FontyFruity)
          (hsPkgs.JuicyPixels)
          (hsPkgs.time)
          (hsPkgs.async)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.lens)
          (hsPkgs.file-embed)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gelatin-core)
            (hsPkgs.linear)
            (hsPkgs.gl)
            (hsPkgs.GLFW-b)
            (hsPkgs.FontyFruity)
            (hsPkgs.JuicyPixels)
            (hsPkgs.time)
            (hsPkgs.async)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.lens)
            (hsPkgs.file-embed)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }