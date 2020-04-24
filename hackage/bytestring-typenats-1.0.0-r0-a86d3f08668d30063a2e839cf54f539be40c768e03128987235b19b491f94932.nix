{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usecereal = true; usebinary = true; usearbitrary = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-typenats"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy.groven@gmail.com";
      author = "Jeremy Groven";
      homepage = "https://github.com/tsuraan/bytestring-typenats";
      url = "";
      synopsis = "Bytestrings with typenat lengths";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
          ] ++ (pkgs.lib).optional (flags.usecereal) (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.usebinary) (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))) ++ (pkgs.lib).optionals (flags.usearbitrary) [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."blake2" or ((hsPkgs.pkgs-errors).buildDepError "blake2"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          ];
        buildable = true;
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."bytestring-typenats" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-typenats"))
            ] ++ (pkgs.lib).optional (flags.usearbitrary) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"));
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-all" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."bytestring-typenats" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-typenats"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (flags.usearbitrary) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"));
          buildable = true;
          };
        };
      };
    }