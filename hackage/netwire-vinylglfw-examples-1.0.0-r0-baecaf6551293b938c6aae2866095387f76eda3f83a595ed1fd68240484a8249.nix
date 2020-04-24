{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "netwire-vinylglfw-examples"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "runKleisli@openmailbox.org";
      author = "Rand Kleisli";
      homepage = "";
      url = "";
      synopsis = "Netwire/GLFW/VinylGL input handling demo";
      description = "Port of netwire-input-glfw example to VinylGL & GLSL 1.50. Uses Netwire 5 and Vinyl >= 0.4. NetVinylGLFW is a previous combination of Netwire, VinylGL, & GLFW, but its Netwire and Vinyl versions are outdated as of 2016. The combination with STM that it suggests is embraced by netwire-input-glfw.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "netwire-vinylglfw-style0" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
            (hsPkgs."netwire" or ((hsPkgs.pkgs-errors).buildDepError "netwire"))
            (hsPkgs."netwire-input" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."GLUtil" or ((hsPkgs.pkgs-errors).buildDepError "GLUtil"))
            (hsPkgs."vinyl-gl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl-gl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "netwire-vinylglfw-style1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
            (hsPkgs."netwire" or ((hsPkgs.pkgs-errors).buildDepError "netwire"))
            (hsPkgs."netwire-input" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."GLUtil" or ((hsPkgs.pkgs-errors).buildDepError "GLUtil"))
            (hsPkgs."vinyl-gl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl-gl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "netwire-vinylglfw-style2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
            (hsPkgs."netwire" or ((hsPkgs.pkgs-errors).buildDepError "netwire"))
            (hsPkgs."netwire-input" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."GLUtil" or ((hsPkgs.pkgs-errors).buildDepError "GLUtil"))
            (hsPkgs."vinyl-gl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl-gl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }