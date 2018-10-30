{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      example = false;
      testclient = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lambdacube-gl";
        version = "0.5.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba.hruska@gmail.com";
      author = "Csaba Hruska, Peter Divianszky";
      homepage = "http://lambdacube3d.com";
      url = "";
      synopsis = "OpenGL 3.3 Core Profile backend for LambdaCube 3D";
      description = "OpenGL 3.3 Core Profile backend for LambdaCube 3D";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.JuicyPixels)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.lambdacube-ir)
        ];
      };
      exes = {
        "lambdacube-gl-hello" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.JuicyPixels)
            (hsPkgs.aeson)
            (hsPkgs.GLFW-b)
            (hsPkgs.lambdacube-gl)
            (hsPkgs.lambdacube-ir)
          ];
        };
        "lambdacube-gl-hello-obj" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.JuicyPixels)
            (hsPkgs.aeson)
            (hsPkgs.GLFW-b)
            (hsPkgs.wavefront)
            (hsPkgs.lambdacube-gl)
            (hsPkgs.lambdacube-ir)
          ];
        };
        "lambdacube-gl-test-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.exceptions)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.vector)
            (hsPkgs.JuicyPixels)
            (hsPkgs.aeson)
            (hsPkgs.websockets)
            (hsPkgs.network)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.lambdacube-gl)
            (hsPkgs.lambdacube-ir)
          ];
        };
      };
    };
  }