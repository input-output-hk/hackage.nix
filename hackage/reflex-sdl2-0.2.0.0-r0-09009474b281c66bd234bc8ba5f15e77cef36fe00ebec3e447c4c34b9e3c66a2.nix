{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-sdl2"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Schell Scivally";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/reflex-sdl2#readme";
      url = "";
      synopsis = "SDL2 and reflex FRP";
      description = "A minimal host for sdl2 based reflex apps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."exception-transformers" or ((hsPkgs.pkgs-errors).buildDepError "exception-transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          (hsPkgs."ref-tf" or ((hsPkgs.pkgs-errors).buildDepError "ref-tf"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "reflex-sdl2-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."reflex-sdl2" or ((hsPkgs.pkgs-errors).buildDepError "reflex-sdl2"))
            ];
          buildable = true;
          };
        };
      };
    }