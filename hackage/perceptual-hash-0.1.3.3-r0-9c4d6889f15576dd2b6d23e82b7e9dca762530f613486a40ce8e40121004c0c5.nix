{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { with-phash = false; llvm = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "perceptual-hash"; version = "0.1.3.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Find duplicate images";
      description = "Find similar images using perceptual hashes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hip" or ((hsPkgs.pkgs-errors).buildDepError "hip"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        pkgconfig = (pkgs.lib).optional (flags.with-phash) (pkgconfPkgs."pHash" or ((hsPkgs.pkgs-errors).pkgConfDepError "pHash"));
        buildable = true;
        };
      foreignlibs = {
        "hsphash" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."perceptual-hash" or ((hsPkgs.pkgs-errors).buildDepError "perceptual-hash"))
            ];
          buildable = true;
          };
        };
      exes = {
        "phash" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."perceptual-hash" or ((hsPkgs.pkgs-errors).buildDepError "perceptual-hash"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."par-traverse" or ((hsPkgs.pkgs-errors).buildDepError "par-traverse"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      tests = {
        "perceptual-hash-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."perceptual-hash" or ((hsPkgs.pkgs-errors).buildDepError "perceptual-hash"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "phash-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."perceptual-hash" or ((hsPkgs.pkgs-errors).buildDepError "perceptual-hash"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or ((hsPkgs.pkgs-errors).buildToolDepError "cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }