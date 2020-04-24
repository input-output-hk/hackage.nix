{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "shine"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2016 Francesco Gazzetta";
      maintainer = "Francesco Gazzetta <francygazz@gmail.com>";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/shine";
      url = "";
      synopsis = "Declarative graphics for the browser using GHCJS";
      description = "Shine wraps javascript's drawing functions in a declarative API.\nHeavily inspired by Gloss.\n\nRead the README for an overview of the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
          (hsPkgs."ghcjs-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-prim"))
          (hsPkgs."keycode" or ((hsPkgs.pkgs-errors).buildDepError "keycode"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test-shine" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
            (hsPkgs."shine" or ((hsPkgs.pkgs-errors).buildDepError "shine"))
            ];
          buildable = true;
          };
        };
      };
    }