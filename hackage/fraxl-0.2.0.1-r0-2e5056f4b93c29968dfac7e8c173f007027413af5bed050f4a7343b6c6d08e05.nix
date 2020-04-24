{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { install-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fraxl"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Will Fancher";
      maintainer = "willfancher38@gmail.com";
      author = "Will Fancher";
      homepage = "https://github.com/ElvishJerricco/fraxl";
      url = "";
      synopsis = "Cached and parallel data fetching.";
      description = "Fraxl is a free monad designed to make concurrent data fetching easy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."type-aligned" or ((hsPkgs.pkgs-errors).buildDepError "type-aligned"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fraxl" or ((hsPkgs.pkgs-errors).buildDepError "fraxl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        };
      benchmarks = {
        "monadbench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fraxl" or ((hsPkgs.pkgs-errors).buildDepError "fraxl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }