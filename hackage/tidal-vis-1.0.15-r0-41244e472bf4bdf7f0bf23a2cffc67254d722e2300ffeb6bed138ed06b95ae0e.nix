{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "tidal-vis"; version = "1.0.15"; };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and others, 2019";
      maintainer = "alex@slab.org";
      author = "Alex McLean";
      homepage = "http://yaxu.org/tidal/";
      url = "";
      synopsis = "Visual rendering for Tidal patterns and osc messages";
      description = "Tidal is a domain specific language for live coding pattern. This package allows colour patterns to be rendered as PDF or SVG files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
          (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
          (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
          (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."tidal" or ((hsPkgs.pkgs-errors).buildDepError "tidal"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
          ];
        buildable = true;
        };
      exes = {
        "tidal-vis" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tidal-vis" or ((hsPkgs.pkgs-errors).buildDepError "tidal-vis"))
            ];
          buildable = true;
          };
        };
      };
    }