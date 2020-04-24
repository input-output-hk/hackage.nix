{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graphics-formats-collada"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "http://github.com/luqui/collada";
      url = "";
      synopsis = "Load 3D geometry in the COLLADA format";
      description = "Early in development.  Should be able to load anything that Google SketchUp\nproduces -- other than that, all bets are off.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."stb-image" or ((hsPkgs.pkgs-errors).buildDepError "stb-image"))
          (hsPkgs."bitmap-opengl" or ((hsPkgs.pkgs-errors).buildDepError "bitmap-opengl"))
          ];
        buildable = true;
        };
      };
    }