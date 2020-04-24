{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; testclient = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lambdacube-gl"; version = "0.5.2.0"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."lambdacube-ir" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-ir"))
          ];
        buildable = true;
        };
      exes = {
        "lambdacube-gl-hello" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."lambdacube-gl" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-ir"))
            ];
          buildable = if flags.example then true else false;
          };
        "lambdacube-gl-hello-obj" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."wavefront" or ((hsPkgs.pkgs-errors).buildDepError "wavefront"))
            (hsPkgs."lambdacube-gl" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-ir"))
            ];
          buildable = if flags.example then true else false;
          };
        "lambdacube-gl-test-client" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."lambdacube-gl" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-gl"))
            (hsPkgs."lambdacube-ir" or ((hsPkgs.pkgs-errors).buildDepError "lambdacube-ir"))
            ];
          buildable = if flags.testclient then true else false;
          };
        };
      };
    }