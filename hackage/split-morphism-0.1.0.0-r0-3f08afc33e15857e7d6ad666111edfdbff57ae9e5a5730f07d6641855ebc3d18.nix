{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "split-morphism"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Gabriel Volpe";
      maintainer = "volpegabriel@gmail.com";
      author = "Gabriel Volpe";
      homepage = "https://github.com/gvolpe/split-morphism#readme";
      url = "";
      synopsis = "Split Epimorphisms and Monomorphisms";
      description = "Please see the README on GitHub at <https://github.com/gvolpe/split-morphism#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."invariant" or ((hsPkgs.pkgs-errors).buildDepError "invariant"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "split-morphism-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."invariant" or ((hsPkgs.pkgs-errors).buildDepError "invariant"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."split-morphism" or ((hsPkgs.pkgs-errors).buildDepError "split-morphism"))
            ];
          buildable = true;
          };
        };
      };
    }