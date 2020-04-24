{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "getopt-generics"; version = "0.10.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Zalora South East Asia Pte Ltd";
      maintainer = "linh.nguyen@zalora.com, soenke.hahn@zalora.com";
      author = "Linh Nguyen, Sönke Hahn";
      homepage = "https://github.com/zalora/getopt-generics#readme";
      url = "";
      synopsis = "Create command line interfaces with ease";
      description = "Create command line interfaces with ease";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
          (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            ];
          buildable = true;
          };
        };
      };
    }