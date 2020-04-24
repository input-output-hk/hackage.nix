{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "attoparsec-ip"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD-3";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/attoparsec-ip#readme";
      url = "";
      synopsis = "Parse IP data types with attoparsec";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
          ];
        buildable = true;
        };
      tests = {
        "attoparsec-ip-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."attoparsec-ip" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-ip"))
            ];
          buildable = true;
          };
        };
      };
    }