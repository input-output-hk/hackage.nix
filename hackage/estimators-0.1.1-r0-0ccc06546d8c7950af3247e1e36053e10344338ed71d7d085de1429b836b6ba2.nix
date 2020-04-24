{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "estimators"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<srush@mit.edu>";
      author = "Sasha Rush";
      homepage = "";
      url = "";
      synopsis = "Tool for managing probability estimation";
      description = "This library provides data structures for collecting counts\nand estimating distributions from observed data. It is designed for natural language\nsystems that need to handle large, discrete observation sets and\nperform smoothing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."list-tries" or ((hsPkgs.pkgs-errors).buildDepError "list-tries"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }