{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "HPong"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Remco Niemeijer <R.A.Niemeijer@tue.nl>";
      author = "Remco Niemeijer";
      homepage = "";
      url = "";
      synopsis = "2-D single-player game";
      description = "A simple OpenGL Pong game based on GLFW";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpong" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-template"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
            ];
          buildable = true;
          };
        };
      };
    }