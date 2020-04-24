{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "j2hs"; version = "0.99"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "j2hs";
      description = "j2hs";
      buildType = "Custom";
      };
    components = {
      exes = {
        "j2hs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hx" or ((hsPkgs.pkgs-errors).buildDepError "hx"))
            (hsPkgs."java-bridge" or ((hsPkgs.pkgs-errors).buildDepError "java-bridge"))
            (hsPkgs."java-bridge-extras" or ((hsPkgs.pkgs-errors).buildDepError "java-bridge-extras"))
            (hsPkgs."java-reflect" or ((hsPkgs.pkgs-errors).buildDepError "java-reflect"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."named-records" or ((hsPkgs.pkgs-errors).buildDepError "named-records"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bimap" or ((hsPkgs.pkgs-errors).buildDepError "bimap"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."strings" or ((hsPkgs.pkgs-errors).buildDepError "strings"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            ];
          buildable = true;
          };
        };
      };
    }