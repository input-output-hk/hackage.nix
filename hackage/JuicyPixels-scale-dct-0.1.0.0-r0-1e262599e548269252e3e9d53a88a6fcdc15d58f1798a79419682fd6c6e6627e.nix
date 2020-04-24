{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "JuicyPixels-scale-dct"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/JuicyPixels-scale-dct#readme";
      url = "";
      synopsis = "Scale JuicyPixels images with DCT";
      description = "Scale JuicyPixels Images with DCT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
          (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
            (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-scale-dct" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels-scale-dct"))
            (hsPkgs."JuicyPixels-util" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels-util"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }