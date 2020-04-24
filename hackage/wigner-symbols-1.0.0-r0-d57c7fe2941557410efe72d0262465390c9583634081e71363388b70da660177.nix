{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wigner-symbols"; version = "1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Phil Ruffwind";
      maintainer = "rf@rufflewind.com";
      author = "Phil Ruffwind";
      homepage = "https://github.com/Rufflewind/wigner-symbols";
      url = "";
      synopsis = "CG coefficients and Wigner symbols.";
      description = "Clebsch-Gordan coefficients and Wigner 3-j, 6-j, and 9-j\nsymbols.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wigner-symbols" or ((hsPkgs.pkgs-errors).buildDepError "wigner-symbols"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wigner-symbols" or ((hsPkgs.pkgs-errors).buildDepError "wigner-symbols"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }