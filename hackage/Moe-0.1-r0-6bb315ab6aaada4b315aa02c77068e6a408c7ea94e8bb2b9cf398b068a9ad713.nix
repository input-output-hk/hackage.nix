{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Moe"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fnnirvana@gmail.com";
      author = "Xinyu Jiang";
      homepage = "";
      url = "";
      synopsis = "A FRP library based on signal functions.";
      description = "A FRP library based on signal functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          ];
        buildable = true;
        };
      exes = {
        "MoeExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            ];
          buildable = true;
          };
        };
      };
    }