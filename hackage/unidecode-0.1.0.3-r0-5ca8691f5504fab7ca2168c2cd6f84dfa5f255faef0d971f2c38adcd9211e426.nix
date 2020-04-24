{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unidecode"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mark Wotton";
      maintainer = "mwotton@gmail.com";
      author = "A";
      homepage = "https://github.com/mwotton/unidecode#readme";
      url = "";
      synopsis = "Haskell binding of Unidecode";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "unidecode-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unidecode" or ((hsPkgs.pkgs-errors).buildDepError "unidecode"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }