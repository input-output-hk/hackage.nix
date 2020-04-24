{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "spanout"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Viktor Tanyi <tanyi.viktor@gmail.com>";
      author = "Viktor Tanyi";
      homepage = "https://github.com/vtan/spanout";
      url = "";
      synopsis = "A breakout clone written in netwire and gloss";
      description = "A breakout clone written in netwire and gloss.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "spanout" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."netwire" or ((hsPkgs.pkgs-errors).buildDepError "netwire"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        };
      };
    }