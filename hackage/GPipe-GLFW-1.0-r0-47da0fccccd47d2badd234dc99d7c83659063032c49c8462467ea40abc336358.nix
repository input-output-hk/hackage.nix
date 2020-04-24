{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "GPipe-GLFW"; version = "1.0"; };
      license = "MIT";
      copyright = "Patrick Redmond";
      maintainer = "Patrick Redmond";
      author = "Patrick Redmond";
      homepage = "https://github.com/plredmond/GPipe-GLFW";
      url = "";
      synopsis = "GLFW OpenGL context creation for GPipe";
      description = "A utility library to enable the use of GLFW as the OpenGL window and context handler for GPipe.\nGPipe is a typesafe functional API based on the conceptual model of OpenGL, but without the imperative state machine.\nSee the GPipe package and resources for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          (hsPkgs."GPipe" or ((hsPkgs.pkgs-errors).buildDepError "GPipe"))
          ];
        buildable = true;
        };
      };
    }