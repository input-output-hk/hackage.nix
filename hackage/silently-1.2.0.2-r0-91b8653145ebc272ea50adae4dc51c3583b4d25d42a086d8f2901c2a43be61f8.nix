{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "silently"; version = "1.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Trystan Spangler 2011";
      maintainer = "trystan.s@comcast.net";
      author = "Trystan Spangler";
      homepage = "https://github.com/trystan/silently";
      url = "https://github.com/trystan/silently";
      synopsis = "Prevent or capture writing to stdout and other handles.";
      description = "Prevent or capture writing to stdout and other handles.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "spec-specific" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "spec-generic" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }