{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "liveplot"; version = "0.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."andromeda" or ((hsPkgs.pkgs-errors).buildDepError "andromeda"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          (hsPkgs."GLUtil" or ((hsPkgs.pkgs-errors).buildDepError "GLUtil"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."mvc" or ((hsPkgs.pkgs-errors).buildDepError "mvc"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-misc" or ((hsPkgs.pkgs-errors).buildDepError "pipes-misc"))
          (hsPkgs."pipes-extras" or ((hsPkgs.pkgs-errors).buildDepError "pipes-extras"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."vinyl-gl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl-gl"))
          ];
        buildable = true;
        };
      exes = {
        "liveplot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."liveplot" or ((hsPkgs.pkgs-errors).buildDepError "liveplot"))
            ];
          buildable = true;
          };
        };
      };
    }