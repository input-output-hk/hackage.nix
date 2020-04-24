{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-elm"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Matt Bray";
      maintainer = "mattjbray@gmail.com";
      author = "Matt Bray";
      homepage = "http://github.com/mattjbray/servant-elm#readme";
      url = "";
      synopsis = "Automatically derive Elm functions to query servant webservices.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."elm-export" or ((hsPkgs.pkgs-errors).buildDepError "elm-export"))
          (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-foreign" or ((hsPkgs.pkgs-errors).buildDepError "servant-foreign"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "books-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elm-export" or ((hsPkgs.pkgs-errors).buildDepError "elm-export"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-elm" or ((hsPkgs.pkgs-errors).buildDepError "servant-elm"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "e2e-tests-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elm-export" or ((hsPkgs.pkgs-errors).buildDepError "elm-export"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-elm" or ((hsPkgs.pkgs-errors).buildDepError "servant-elm"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "giphy-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elm-export" or ((hsPkgs.pkgs-errors).buildDepError "elm-export"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-elm" or ((hsPkgs.pkgs-errors).buildDepError "servant-elm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "readme-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elm-export" or ((hsPkgs.pkgs-errors).buildDepError "elm-export"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-elm" or ((hsPkgs.pkgs-errors).buildDepError "servant-elm"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "servant-elm-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."elm-export" or ((hsPkgs.pkgs-errors).buildDepError "elm-export"))
            (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."interpolate" or ((hsPkgs.pkgs-errors).buildDepError "interpolate"))
            (hsPkgs."mockery" or ((hsPkgs.pkgs-errors).buildDepError "mockery"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-elm" or ((hsPkgs.pkgs-errors).buildDepError "servant-elm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }