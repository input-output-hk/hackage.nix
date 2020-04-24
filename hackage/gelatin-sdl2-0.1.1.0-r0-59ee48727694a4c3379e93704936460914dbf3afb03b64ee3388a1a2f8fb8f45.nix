{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gelatin-sdl2"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin";
      url = "";
      synopsis = "An SDL2 backend for the gelatin renderer.";
      description = "Using SDL2 this package provides a backend to\ngelatin, an EDSL rendering pictures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."gelatin-gl" or ((hsPkgs.pkgs-errors).buildDepError "gelatin-gl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "gelatin-sdl2-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gelatin-sdl2" or ((hsPkgs.pkgs-errors).buildDepError "gelatin-sdl2"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            ];
          buildable = true;
          };
        };
      };
    }