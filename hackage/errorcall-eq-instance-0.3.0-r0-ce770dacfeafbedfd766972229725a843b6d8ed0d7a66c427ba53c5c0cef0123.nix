{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "errorcall-eq-instance"; version = "0.3.0"; };
      license = "MIT";
      copyright = "(c) 2013 Simon Hengel";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An orphan Eq instance for ErrorCall";
      description = "Prior to @base-4.7.0.0@ there was no @Eq@ instance for\n@ErrorCall@.  This package provides an orphan instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."errorcall-eq-instance" or ((hsPkgs.pkgs-errors).buildDepError "errorcall-eq-instance"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }