{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cipher-camellia"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Camellia block cipher primitives";
      description = "Camellia block cipher primitives";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
          (hsPkgs."crypto-cipher-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-cipher-types"))
          (hsPkgs."securemem" or ((hsPkgs.pkgs-errors).buildDepError "securemem"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test-cipher-camellia" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cipher-camellia" or ((hsPkgs.pkgs-errors).buildDepError "cipher-camellia"))
            (hsPkgs."crypto-cipher-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-cipher-types"))
            (hsPkgs."crypto-cipher-tests" or ((hsPkgs.pkgs-errors).buildDepError "crypto-cipher-tests"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-cipher-camellia" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cipher-camellia" or ((hsPkgs.pkgs-errors).buildDepError "cipher-camellia"))
            (hsPkgs."crypto-cipher-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-cipher-types"))
            (hsPkgs."crypto-cipher-benchmarks" or ((hsPkgs.pkgs-errors).buildDepError "crypto-cipher-benchmarks"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }