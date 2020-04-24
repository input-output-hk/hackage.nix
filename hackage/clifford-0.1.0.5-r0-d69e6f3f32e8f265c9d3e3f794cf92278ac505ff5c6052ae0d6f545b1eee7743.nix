{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clifford"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sophie@traumapony.org";
      author = "Sophie Taylor";
      homepage = "http://github.com/spacekitteh/haskell-clifford";
      url = "";
      synopsis = "A Clifford algebra library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."permutation" or ((hsPkgs.pkgs-errors).buildDepError "permutation"))
          (hsPkgs."data-ordlist" or ((hsPkgs.pkgs-errors).buildDepError "data-ordlist"))
          (hsPkgs."converge" or ((hsPkgs.pkgs-errors).buildDepError "converge"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."stream-fusion" or ((hsPkgs.pkgs-errors).buildDepError "stream-fusion"))
          (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
          (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."clifford" or ((hsPkgs.pkgs-errors).buildDepError "clifford"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
            ];
          buildable = true;
          };
        };
      };
    }