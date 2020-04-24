{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "spice"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2014, Cerek Hillen";
      maintainer = "Cerek Hillen <cerekh@gmail.com>";
      author = "Cerek Hillen";
      homepage = "http://github.com/crockeo/spice";
      url = "";
      synopsis = "An FRP-based game engine written in Haskell.";
      description = "An FRP-based game engine written in Haskell. - See the homepage for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."elerea" or ((hsPkgs.pkgs-errors).buildDepError "elerea"))
          (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      };
    }