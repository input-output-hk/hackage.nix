{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shellwords"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2018 Patrick Brisbin";
      maintainer = "pbrisbin@gmail.com";
      author = "Patrick Brisbin";
      homepage = "https://github.com/pbrisbin/hs-shellwords#readme";
      url = "";
      synopsis = "Parse strings into words, like a shell would";
      description = "See https://github.com/pbrisbin/hs-shellwords#readme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."shellwords" or ((hsPkgs.pkgs-errors).buildDepError "shellwords"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }