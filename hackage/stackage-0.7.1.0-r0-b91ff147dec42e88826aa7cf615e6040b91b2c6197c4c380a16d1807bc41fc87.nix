{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stackage"; version = "0.7.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://www.stackage.org/";
      url = "";
      synopsis = "Dummy package forcing installation of other Stackage packages";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stackage-cli" or ((hsPkgs.pkgs-errors).buildDepError "stackage-cli"))
          (hsPkgs."stackage-update" or ((hsPkgs.pkgs-errors).buildDepError "stackage-update"))
          (hsPkgs."stackage-upload" or ((hsPkgs.pkgs-errors).buildDepError "stackage-upload"))
          (hsPkgs."stackage-install" or ((hsPkgs.pkgs-errors).buildDepError "stackage-install"))
          ];
        buildable = true;
        };
      };
    }