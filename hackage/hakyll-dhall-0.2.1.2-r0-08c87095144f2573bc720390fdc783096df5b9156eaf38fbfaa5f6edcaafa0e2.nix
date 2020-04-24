{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hakyll-dhall"; version = "0.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hakyll-dhall#readme";
      url = "";
      synopsis = "Dhall compiler for Hakyll";
      description = "Please see the README on GitHub at <https://github.com/mstksg/hakyll-dhall#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."cborg" or ((hsPkgs.pkgs-errors).buildDepError "cborg"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
          (hsPkgs."lens-family-core" or ((hsPkgs.pkgs-errors).buildDepError "lens-family-core"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "hakyll-dhall-test-app" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
            (hsPkgs."hakyll-dhall" or ((hsPkgs.pkgs-errors).buildDepError "hakyll-dhall"))
            ];
          buildable = true;
          };
        };
      };
    }