{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "bounded-queue"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Kadena LLC";
      maintainer = "colin@kadena.io";
      author = "Colin Woodbury";
      homepage = "https://gitlab.com/fosskers/bounded-queue";
      url = "";
      synopsis = "A strict, immutable, thread-safe, single-ended, bounded queue.";
      description = "A strict, immutable, thread-safe, single-ended, bounded queue\nwhich automatically forgets old values instead of blocking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "bounded-queue-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bounded-queue" or ((hsPkgs.pkgs-errors).buildDepError "bounded-queue"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }