{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "GPipe-GLFW"; version = "1.3.0"; };
      license = "MIT";
      copyright = "Patrick Redmond";
      maintainer = "Patrick Redmond";
      author = "Patrick Redmond";
      homepage = "https://github.com/plredmond/GPipe-GLFW";
      url = "";
      synopsis = "GLFW OpenGL context creation for GPipe";
      description = "GPipe-GLFW is a utility library to enable the use of GLFW as\nthe OpenGL window and context handler for GPipe. GPipe is a\ntypesafe functional API based on the conceptual model of\nOpenGL, but without the imperative state machine.";
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
      exes = {
        "gpipe-glfw-smoketests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."GPipe" or ((hsPkgs.pkgs-errors).buildDepError "GPipe"))
            (hsPkgs."GPipe-GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GPipe-GLFW"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."exception-transformers" or ((hsPkgs.pkgs-errors).buildDepError "exception-transformers"))
            ];
          buildable = true;
          };
        };
      };
    }