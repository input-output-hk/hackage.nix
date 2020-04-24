{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hOff-display"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) Johann Lee <me@qinka.pro>";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/hOff";
      url = "";
      synopsis = "The tool to transform the OFF to other image format.";
      description = "The tool to transform the OFF file to other image with gnuplot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hOff-parser" or ((hsPkgs.pkgs-errors).buildDepError "hOff-parser"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      exes = {
        "hOff-display-gl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hOff-parser" or ((hsPkgs.pkgs-errors).buildDepError "hOff-parser"))
            (hsPkgs."hOff-display" or ((hsPkgs.pkgs-errors).buildDepError "hOff-display"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }