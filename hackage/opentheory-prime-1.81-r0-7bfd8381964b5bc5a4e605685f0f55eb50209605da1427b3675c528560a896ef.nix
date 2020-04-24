{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "opentheory-prime"; version = "1.81"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Prime natural numbers";
      description = "Prime natural numbers - this package was automatically generated from the\nOpenTheory package natural-prime-1.81";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
          (hsPkgs."opentheory-divides" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-divides"))
          (hsPkgs."opentheory-stream" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-stream"))
          ];
        buildable = true;
        };
      tests = {
        "opentheory-prime-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
            (hsPkgs."opentheory-divides" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-divides"))
            (hsPkgs."opentheory-stream" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-stream"))
            ];
          buildable = true;
          };
        };
      };
    }