{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-elm"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Elias Lawson-Fox";
      maintainer = "me@eliaslfox.com";
      author = "Elias Lawson-Fox";
      homepage = "https://github.com/eliaslfox/language-elm#readme";
      url = "";
      synopsis = "Generate elm code";
      description = "Generate elm code from an ast";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.doctest or (pkgs.buildPackages.doctest or ((hsPkgs.pkgs-errors).buildToolDepError "doctest")))
          ];
        buildable = true;
        };
      tests = {
        "language-elm-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."language-elm" or ((hsPkgs.pkgs-errors).buildDepError "language-elm"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest or (pkgs.buildPackages.doctest or ((hsPkgs.pkgs-errors).buildToolDepError "doctest")))
            ];
          buildable = true;
          };
        };
      };
    }