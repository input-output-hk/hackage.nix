{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wright"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@vikramverma.com";
      author = "vi";
      homepage = "";
      url = "";
      synopsis = "Colour space transformations and metrics.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bed-and-breakfast" or ((hsPkgs.pkgs-errors).buildDepError "bed-and-breakfast"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "wright-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bed-and-breakfast" or ((hsPkgs.pkgs-errors).buildDepError "bed-and-breakfast"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."assertions" or ((hsPkgs.pkgs-errors).buildDepError "assertions"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."wright" or ((hsPkgs.pkgs-errors).buildDepError "wright"))
            ];
          buildable = true;
          };
        };
      };
    }