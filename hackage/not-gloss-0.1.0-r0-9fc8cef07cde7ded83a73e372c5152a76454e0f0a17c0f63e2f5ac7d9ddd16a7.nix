{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "not-gloss"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Painless 3D graphics, no affiliation with gloss";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
          ];
        buildable = true;
        };
      exes = {
        "not-gloss-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
            ];
          buildable = true;
          };
        };
      };
    }