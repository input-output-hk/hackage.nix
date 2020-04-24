{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "bitset"; version = "1.4.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "superbobry@gmail.com";
      author = "Sergei Lebedev <superbobry@gmail.com>\n, Aleksey Kladov <aleksey.kladov@gmail.com>\n, Fedor Gogolev <knsd@knsd.net>";
      homepage = "";
      url = "";
      synopsis = "A space-efficient set data structure.";
      description = "A /bit set/ is a compact data structure, which maintains a set of members\nfrom a type that can be enumerated (i. e. has an `Enum' instance).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        libs = [ (pkgs."gmp" or ((hsPkgs.pkgs-errors).sysDepError "gmp")) ];
        buildable = true;
        };
      tests = {
        "bitset-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."bitset" or ((hsPkgs.pkgs-errors).buildDepError "bitset"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bitset-benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            ];
          libs = [ (pkgs."gmp" or ((hsPkgs.pkgs-errors).sysDepError "gmp")) ];
          buildable = true;
          };
        };
      };
    }