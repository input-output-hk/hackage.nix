{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yx"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Matthieu Monsch";
      maintainer = "mtth@apache.org";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/yx";
      url = "";
      synopsis = "Row-major coordinates";
      description = "https://github.com/mtth/yx";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "yx-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."yx" or ((hsPkgs.pkgs-errors).buildDepError "yx"))
            ];
          buildable = true;
          };
        };
      };
    }