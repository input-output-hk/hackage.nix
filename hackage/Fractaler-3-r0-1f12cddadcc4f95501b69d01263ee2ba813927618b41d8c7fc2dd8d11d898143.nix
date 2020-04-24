{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "Fractaler"; version = "3"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "serprex";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Fractal renderer";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Fractaler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."FTGL" or ((hsPkgs.pkgs-errors).buildDepError "FTGL"))
            ];
          buildable = true;
          };
        };
      };
    }