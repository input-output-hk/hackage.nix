{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; opt = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "lol"; version = "0.7.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Eric Crockett,\nChris Peikert";
      maintainer = "Eric Crockett <ecrockett@gmail.com>,\nChad Sharp <cmlsharp@umich.edu>";
      author = "Eric Crockett <ecrockett0@gmail.com>,\nChris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/lol#readme";
      url = "";
      synopsis = "A library for lattice cryptography.";
      description = "Λ ⚬ λ (Lol) is a general-purpose library for ring-based lattice cryptography.  For a detailed description of interfaces and functionality, see <https://eprint.iacr.org/2015/1134 Λ ⚬ λ: Functional Lattice Cryptography>. The main backend for the library is <https://hackage.haskell.org/package/lol-cpp lol-cpp> (<https://hackage.haskell.org/package/lol-repa lol-repa> is currently out of date). For example cryptographic applications, see <https://hackage.haskell.org/package/lol-apps lol-apps>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
          (hsPkgs."criterion-measurement" or ((hsPkgs.pkgs-errors).buildDepError "criterion-measurement"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."monadcryptorandom" or ((hsPkgs.pkgs-errors).buildDepError "monadcryptorandom"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."protocol-buffers" or ((hsPkgs.pkgs-errors).buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or ((hsPkgs.pkgs-errors).buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."tagged-transformer" or ((hsPkgs.pkgs-errors).buildDepError "tagged-transformer"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or ((hsPkgs.pkgs-errors).buildDepError "vector-th-unbox"))
          ];
        buildable = true;
        };
      tests = {
        "test-lol" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lol" or ((hsPkgs.pkgs-errors).buildDepError "lol"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            ];
          buildable = true;
          };
        };
      };
    }