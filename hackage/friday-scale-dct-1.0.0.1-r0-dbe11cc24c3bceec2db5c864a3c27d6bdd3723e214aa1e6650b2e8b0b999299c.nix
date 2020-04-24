{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "friday-scale-dct"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Mason <axman6@gmail.com>";
      author = "Alex Mason <axman6@gmail.com>, Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/axman6/friday-scale-dct#readme";
      url = "";
      synopsis = "Scale Friday images with DCT";
      description = "Scale Friday Images with DCT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
          (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
          (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
            (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            (hsPkgs."friday-scale-dct" or ((hsPkgs.pkgs-errors).buildDepError "friday-scale-dct"))
            (hsPkgs."friday-juicypixels" or ((hsPkgs.pkgs-errors).buildDepError "friday-juicypixels"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-util" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels-util"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = if !flags.example then false else true;
          };
        };
      };
    }