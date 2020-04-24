{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cal3d-examples"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "let at = \"@\" in concat [\"gdweber\", at, \"iue.edu\"]";
      author = "Gregory D. Weber";
      homepage = "http://haskell.org/haskellwiki/Cal3d_animation";
      url = "";
      synopsis = "Examples for the Cal3d animation library.";
      description = "Cal3d animation examples for cal3d.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cally-dump" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."cal3d" or ((hsPkgs.pkgs-errors).buildDepError "cal3d"))
            (hsPkgs."cal3d-opengl" or ((hsPkgs.pkgs-errors).buildDepError "cal3d-opengl"))
            ];
          buildable = true;
          };
        "cally-gl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."cal3d" or ((hsPkgs.pkgs-errors).buildDepError "cal3d"))
            (hsPkgs."cal3d-opengl" or ((hsPkgs.pkgs-errors).buildDepError "cal3d-opengl"))
            ];
          buildable = true;
          };
        };
      };
    }