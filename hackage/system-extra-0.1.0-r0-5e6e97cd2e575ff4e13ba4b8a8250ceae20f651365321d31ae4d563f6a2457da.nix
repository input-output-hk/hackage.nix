{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "system-extra"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "arnaud.oqube@gmail.com";
      author = "Arnaud Bailly";
      homepage = "";
      url = "";
      synopsis = "A bunch of system utilities used by other projects";
      description = "This package provides various system-level utilities, mostly related to building packages\nwithin docker";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."system-extra" or ((hsPkgs.pkgs-errors).buildDepError "system-extra"))
            ];
          buildable = true;
          };
        };
      };
    }