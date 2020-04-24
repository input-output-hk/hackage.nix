{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { scrape-bds = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pvss"; version = "0.2.0"; };
      license = "MIT";
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
          (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          ] ++ (pkgs.lib).optionals (flags.scrape-bds) [
          (hsPkgs."mcl" or ((hsPkgs.pkgs-errors).buildDepError "mcl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "8.0"
          then false
          else true;
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
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
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