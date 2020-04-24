{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-blake2"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "Jay Groven";
      homepage = "https://github.com/tsuraan/hs-blake2";
      url = "";
      synopsis = "A cryptohash-inspired library for blake2";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [ (pkgs."b2" or ((hsPkgs.pkgs-errors).sysDepError "b2")) ];
        buildable = true;
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-arbitrary" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-arbitrary"))
            (hsPkgs."hs-blake2" or ((hsPkgs.pkgs-errors).buildDepError "hs-blake2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          libs = [ (pkgs."b2" or ((hsPkgs.pkgs-errors).sysDepError "b2")) ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-all" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."hs-blake2" or ((hsPkgs.pkgs-errors).buildDepError "hs-blake2"))
            ];
          libs = [ (pkgs."b2" or ((hsPkgs.pkgs-errors).sysDepError "b2")) ];
          buildable = true;
          };
        };
      };
    }