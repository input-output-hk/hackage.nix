{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diff-gestalt"; version = "0.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "none";
      maintainer = "chrismwendt@gmail.com";
      author = "Chris Wendt";
      homepage = "http://github.com/chrismwendt/diff-gestalt";
      url = "";
      synopsis = "A diff algorithm based on recursive longest common substrings";
      description = "This is a diff algorithm based on recursive longest common substrings. A description of the algorithm itself can be found at http://collaboration.cmc.ec.gc.ca/science/rpn/biblio/ddj/Website/articles/DDJ/1988/8807/8807c/8807c.htm";
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