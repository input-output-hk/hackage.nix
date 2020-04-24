{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Monadius"; version = "0.91"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>";
      author = "Hideyuki Tanaka & Takayuki Muranushi";
      homepage = "http://www.geocities.jp/takascience/haskell/monadius_en.html";
      url = "";
      synopsis = "2-D arcade scroller";
      description = "A fast-paced 2-D scrolling vector graphics clone of the arcade game Gradius.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "monadius" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }