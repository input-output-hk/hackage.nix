{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "boopadoop"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "2019 Sam Quinn";
      maintainer = "lazersmoke@gmail.com";
      author = "Sam Quinn";
      homepage = "https://github.com/Lazersmoke/boopadoop#readme";
      url = "";
      synopsis = "Mathematically sound sound synthesis";
      description = "Please see the README on GitHub at <https://github.com/Lazersmoke/boopadoop#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."WAVE" or ((hsPkgs.pkgs-errors).buildDepError "WAVE"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
          (hsPkgs."semialign" or ((hsPkgs.pkgs-errors).buildDepError "semialign"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "boopadoop-test" = {
          depends = [
            (hsPkgs."WAVE" or ((hsPkgs.pkgs-errors).buildDepError "WAVE"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boopadoop" or ((hsPkgs.pkgs-errors).buildDepError "boopadoop"))
            (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
            (hsPkgs."semialign" or ((hsPkgs.pkgs-errors).buildDepError "semialign"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }