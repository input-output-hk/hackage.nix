{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "UISF"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Daniel Winograd-Cort";
      maintainer = "Dan Winograd-Cort <dwc@cs.yale.edu>";
      author = "Dan Winograd-Cort <dwc@cs.yale.edu>";
      homepage = "http://haskell.cs.yale.edu/";
      url = "";
      synopsis = "Library for Arrowized Graphical User Interfaces.";
      description = "UISF is a library for making arrowized GUIs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }