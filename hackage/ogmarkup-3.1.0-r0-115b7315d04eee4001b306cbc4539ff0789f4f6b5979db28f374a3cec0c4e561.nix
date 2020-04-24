{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bench = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ogmarkup"; version = "3.1.0"; };
      license = "MIT";
      copyright = "2016 Ogma Project";
      maintainer = "contact@thomasletan.fr";
      author = "Thomas Letan, Laurent Georget";
      homepage = "http://github.com/ogma-project/ogmarkup";
      url = "";
      synopsis = "A lightweight markup language for story writers";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "ogmadown-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "hspec-megaparsec"))
            (hsPkgs."ogmarkup" or ((hsPkgs.pkgs-errors).buildDepError "ogmarkup"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "ogmarkup-bench" = {
          depends = (pkgs.lib).optionals (flags.bench) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."ogmarkup" or ((hsPkgs.pkgs-errors).buildDepError "ogmarkup"))
            (hsPkgs."file-embed-poly" or ((hsPkgs.pkgs-errors).buildDepError "file-embed-poly"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.bench then true else false;
          };
        };
      };
    }