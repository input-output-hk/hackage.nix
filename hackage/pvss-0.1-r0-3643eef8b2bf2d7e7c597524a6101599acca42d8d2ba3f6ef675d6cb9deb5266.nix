{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pvss"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 IOHK";
      maintainer = "vincent.hanquez@iohk.io";
      author = "Vincent Hanquez";
      homepage = "https://github.com/input-output-hk/pvss-haskell#readme";
      url = "";
      synopsis = "Public Verifiable Secret Sharing";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."cryptonite-openssl" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite-openssl"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          ];
        buildable = true;
        };
      exes = {
        "pvss-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."hourglass" or ((hsPkgs.pkgs-errors).buildDepError "hourglass"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."pvss" or ((hsPkgs.pkgs-errors).buildDepError "pvss"))
            ];
          buildable = true;
          };
        };
      tests = {
        "pvss-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."pvss" or ((hsPkgs.pkgs-errors).buildDepError "pvss"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }