{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "HPong"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Remco Niemeijer <R.A.Niemeijer@tue.nl>";
      author = "Remco Niemeijer";
      homepage = "";
      url = "";
      synopsis = "A simple OpenGL Pong game based on GLFW";
      description = "A simple single-player OpenGL Pong game based on GLFW.\n\nIts main goal is to serve as a basis for other games.";
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