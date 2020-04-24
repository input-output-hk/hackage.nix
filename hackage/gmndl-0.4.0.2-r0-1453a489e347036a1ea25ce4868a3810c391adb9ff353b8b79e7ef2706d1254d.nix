{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gmndl"; version = "0.4.0.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set explorer using GTK";
      description = "A Mandelbrot Set explorer.  Multiple render threads\nuse higher precision maths at higher zoom levels.\nSuggested usage:\n\n@gmndl +RTS -N -qa -RTS --width=640 --height=480@\n\nLeft-click to zoom in, right-click to zoom out.  The\nstatus bar shows where you are, and the entry field\ntakes an angled internal address, try for example:\n\n@1\\/3 1\\/2 5 7@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gmndl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."gtkglext" or ((hsPkgs.pkgs-errors).buildDepError "gtkglext"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."priority-queue" or ((hsPkgs.pkgs-errors).buildDepError "priority-queue"))
            (hsPkgs."qd" or ((hsPkgs.pkgs-errors).buildDepError "qd"))
            (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
            (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
            (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
            ];
          buildable = true;
          };
        };
      };
    }