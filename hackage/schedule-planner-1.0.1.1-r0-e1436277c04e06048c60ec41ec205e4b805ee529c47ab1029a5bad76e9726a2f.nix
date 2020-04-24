{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { noscraper = false; static = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "schedule-planner"; version = "1.0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "2015";
      maintainer = "Justus Adam <development@justusadam.com>";
      author = "Justus Adam <development@justusadam.com>";
      homepage = "";
      url = "";
      synopsis = "Find the ideal lesson layout";
      description = "Executable program for calculating layouts for fixed grid schedules as\nare used in many universities and schools.\nThe primary data format for in- and output is json. A deployable server\ninstance of this software is also available.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "schedule-planner" = {
          depends = if !flags.noscraper
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
              (hsPkgs."options" or ((hsPkgs.pkgs-errors).buildDepError "options"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
              (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
              (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
              (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
              (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
              (hsPkgs."text-icu" or ((hsPkgs.pkgs-errors).buildDepError "text-icu"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
              (hsPkgs."options" or ((hsPkgs.pkgs-errors).buildDepError "options"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
              (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
              (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
              (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
              (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
              ];
          buildable = true;
          };
        };
      };
    }