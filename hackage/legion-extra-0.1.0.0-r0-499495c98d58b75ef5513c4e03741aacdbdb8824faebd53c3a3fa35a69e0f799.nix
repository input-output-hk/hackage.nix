{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "legion-extra"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2016 Rick Owens";
      maintainer = "rick@owensmurray.comm";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/legion-extra#readme";
      url = "";
      synopsis = "Extra non-essential utilities for building legion applications.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."canteven-log" or ((hsPkgs.pkgs-errors).buildDepError "canteven-log"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."legion" or ((hsPkgs.pkgs-errors).buildDepError "legion"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "legion-extra-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."legion-extra" or ((hsPkgs.pkgs-errors).buildDepError "legion-extra"))
            ];
          buildable = true;
          };
        };
      };
    }