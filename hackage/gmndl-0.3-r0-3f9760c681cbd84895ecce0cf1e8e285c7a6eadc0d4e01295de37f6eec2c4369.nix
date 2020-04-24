{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "gmndl"; version = "0.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set explorer using GTK";
      description = "A Mandelbrot Set explorer.  Multiple render threads\nuse higher precision maths at higher zoom levels.\nSuggested usage:\n\n@gmndl +RTS -N -qa -RTS --width=640 --height=480@\n\nLeft-click to zoom in, right-click to zoom out.  The\nstatus bar shows where you are, and the entry field\ntakes a space-separated list of fractions strictly\nbetween 0 and 1, try for example:\n\n@1\\/2 2\\/3 1\\/4 3\\/5@";
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
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."priority-queue" or ((hsPkgs.pkgs-errors).buildDepError "priority-queue"))
            (hsPkgs."qd" or ((hsPkgs.pkgs-errors).buildDepError "qd"))
            ];
          buildable = true;
          };
        };
      };
    }