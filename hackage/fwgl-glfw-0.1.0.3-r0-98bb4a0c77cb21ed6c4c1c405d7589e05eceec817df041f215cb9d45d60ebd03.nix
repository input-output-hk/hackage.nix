{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fwgl-glfw"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ZioCrocifisso\" Prezzavento";
      homepage = "https://github.com/ZioCrocifisso/FWGL";
      url = "";
      synopsis = "FWGL GLFW backend";
      description = "FWGL GLFW backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fwgl" or ((hsPkgs.pkgs-errors).buildDepError "fwgl"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."gl" or ((hsPkgs.pkgs-errors).buildDepError "gl"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          ];
        buildable = true;
        };
      };
    }