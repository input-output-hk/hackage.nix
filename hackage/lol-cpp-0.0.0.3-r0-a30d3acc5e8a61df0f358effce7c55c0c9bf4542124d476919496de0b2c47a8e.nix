{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; opt = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lol-cpp"; version = "0.0.0.3"; };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "A fast C++ backend for <https://hackage.haskell.org/package/lol lol>.";
      description = "Λ ∘ λ (Lol) is a general-purpose library for ring-based lattice cryptography.\nThis package provides a C++ implementation of Lol's Tensor interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."lol" or ((hsPkgs.pkgs-errors).buildDepError "lol"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test-lol-cpp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lol-cpp" or ((hsPkgs.pkgs-errors).buildDepError "lol-cpp"))
            (hsPkgs."lol-tests" or ((hsPkgs.pkgs-errors).buildDepError "lol-tests"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-lol-cpp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."DRBG" or ((hsPkgs.pkgs-errors).buildDepError "DRBG"))
            (hsPkgs."lol" or ((hsPkgs.pkgs-errors).buildDepError "lol"))
            (hsPkgs."lol-benches" or ((hsPkgs.pkgs-errors).buildDepError "lol-benches"))
            (hsPkgs."lol-cpp" or ((hsPkgs.pkgs-errors).buildDepError "lol-cpp"))
            ];
          buildable = true;
          };
        };
      };
    }