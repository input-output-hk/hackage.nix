{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gelatin-fruity"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Schell Scivally";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin-fruity#readme";
      url = "";
      synopsis = "Gelatin's support for rendering TTF outlines, using FontyFruity.";
      description = "Gelatin's support for rendering TTF outlines, using FontyFruity.\nUsing FontyFruity gelatin can render smooth font geometry without\nfreetype.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gelatin" or ((hsPkgs.pkgs-errors).buildDepError "gelatin"))
          (hsPkgs."FontyFruity" or ((hsPkgs.pkgs-errors).buildDepError "FontyFruity"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          ];
        buildable = true;
        };
      };
    }