{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { noisy = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "typed-digits"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Arran Stewart";
      maintainer = "haskell-maintenance@arranstewart.info";
      author = "Arran Stewart";
      homepage = "https://github.com/arranstewart/hs-typed-digits#readme";
      url = "";
      synopsis = "Digits, indexed by their base at the type level";
      description = "Digits, indexed by their base at the type level.\n\nPlease see the README, for more details, available on GitHub at <https://github.com/arranstewart/hs-typed-digits#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."typed-digits" or ((hsPkgs.pkgs-errors).buildDepError "typed-digits"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."typed-digits" or ((hsPkgs.pkgs-errors).buildDepError "typed-digits"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }