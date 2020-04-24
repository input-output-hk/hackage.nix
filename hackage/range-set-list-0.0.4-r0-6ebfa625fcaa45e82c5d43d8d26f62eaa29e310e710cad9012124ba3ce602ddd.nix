{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimized = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "range-set-list"; version = "0.0.4"; };
      license = "MIT";
      copyright = "Copyright (c) 2013 Oleg Grenrus";
      maintainer = "oleg.grenrus@iki.fi";
      author = "Oleg Grenrus";
      homepage = "https://github.com/phadej/range-set-list";
      url = "";
      synopsis = "Memory efficient sets with continuous ranges of elements.";
      description = "Memory efficient sets with continuous ranges of elements. List based implementation. Interface mimics \"Data.Set\" interface where possible.";
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
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."range-set-list" or ((hsPkgs.pkgs-errors).buildDepError "range-set-list"))
            ];
          buildable = true;
          };
        };
      };
    }