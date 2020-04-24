{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "elm-hybrid"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Paramander";
      maintainer = "mats@paramander.com";
      author = "Paramander";
      homepage = "https://gitlab.com/paramander/elm-hybrid";
      url = "";
      synopsis = "Combine Elm with Haskell for data based applications";
      description = "Generate your basic elm types based on Haskell data";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      tests = {
        "elm-hybrid-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elm-hybrid" or ((hsPkgs.pkgs-errors).buildDepError "elm-hybrid"))
            ];
          buildable = true;
          };
        };
      };
    }