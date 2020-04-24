{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lmdb-simple"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2017–2018 Robert Leslie";
      maintainer = "rob@mars.org";
      author = "Rob Leslie";
      homepage = "https://github.com/verement/lmdb-simple#readme";
      url = "";
      synopsis = "Simple API for LMDB";
      description = "This package provides a simple API for using the\nLightning Memory-mapped Database (LMDB).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."lmdb" or ((hsPkgs.pkgs-errors).buildDepError "lmdb"))
          (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
          ];
        buildable = true;
        };
      tests = {
        "sample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lmdb-simple" or ((hsPkgs.pkgs-errors).buildDepError "lmdb-simple"))
            ];
          buildable = true;
          };
        "hspec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."lmdb-simple" or ((hsPkgs.pkgs-errors).buildDepError "lmdb-simple"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."lmdb-simple" or ((hsPkgs.pkgs-errors).buildDepError "lmdb-simple"))
            ];
          buildable = true;
          };
        };
      };
    }