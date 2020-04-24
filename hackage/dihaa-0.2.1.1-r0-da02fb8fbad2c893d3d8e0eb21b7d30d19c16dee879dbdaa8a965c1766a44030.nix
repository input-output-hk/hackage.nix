{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dihaa"; version = "0.2.1.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Sascha Wilde <wilde@sha-bang.de>";
      author = "Sascha Wilde";
      homepage = "http://sha-bang.de";
      url = "";
      synopsis = "ASCII based Diagram drawing in Haskell (Idea based on ditaa)";
      description = "dihaa is a tool which allows converting simple ASCII art\ndrawings of box diagrams to images.\n\nSee documentation of \"Main\" for more details.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dihaa" = {
          depends = [
            (hsPkgs."FontyFruity" or ((hsPkgs.pkgs-errors).buildDepError "FontyFruity"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."Rasterific" or ((hsPkgs.pkgs-errors).buildDepError "Rasterific"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }