{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Quickson"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Sadler <ssadler@mashi.org>";
      author = "Scott Sadler";
      homepage = "https://github.com/ssadler/quickson";
      url = "";
      synopsis = "Quick JSON extractions with Aeson";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          ];
        buildable = true;
        };
      };
    }