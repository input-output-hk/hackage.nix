{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diff-gestalt"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "none";
      maintainer = "chrismwendt@gmail.com";
      author = "Chris Wendt";
      homepage = "http://github.com/chrismwendt/diff-gestalt";
      url = "";
      synopsis = "A diff algorithm based on recursive longest common substrings";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
          (hsPkgs."string-similarity" or ((hsPkgs.pkgs-errors).buildDepError "string-similarity"))
          (hsPkgs."KMP" or ((hsPkgs.pkgs-errors).buildDepError "KMP"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "diff-gestalt-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
            (hsPkgs."diff-gestalt" or ((hsPkgs.pkgs-errors).buildDepError "diff-gestalt"))
            ];
          buildable = true;
          };
        };
      };
    }