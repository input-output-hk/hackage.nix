{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "conferer-hedis"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "lucas6246@gmail.com";
      author = "Lucas David Traverso";
      homepage = "https://github.com/ludat/conferer#readme";
      url = "";
      synopsis = "conferer's FromConfig instances for hedis settings";
      description = "Library to abstract the parsing of many haskell config values from different config sources";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conferer" or ((hsPkgs.pkgs-errors).buildDepError "conferer"))
          (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "conferer-hedis-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."conferer" or ((hsPkgs.pkgs-errors).buildDepError "conferer"))
            (hsPkgs."conferer-hedis" or ((hsPkgs.pkgs-errors).buildDepError "conferer-hedis"))
            (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }