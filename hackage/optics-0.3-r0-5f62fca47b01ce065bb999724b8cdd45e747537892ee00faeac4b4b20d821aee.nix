{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "optics"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "optics@well-typed.com";
      author = "Adam Gundry, Andres Löh, Andrzej Rybczak, Oleg Grenrus";
      homepage = "";
      url = "";
      synopsis = "Optics as an abstract interface";
      description = "This package makes it possible to define and use Lenses, Traversals, Prisms\nand other optics, using an abstract interface. See the main module \"Optics\"\nfor the documentation.\n\nThis is the \"batteries-included\" variant with many dependencies; see the\n@<https://hackage.haskell.org/package/optics-core optics-core>@ package and\nother @optics-*@ dependencies if you need a more limited dependency footprint.\n\nNote: Hackage does not yet display documentation for reexported-modules,\nbut you can start from the \"Optics\" module documentation or see the module\nlist in @<https://hackage.haskell.org/package/optics-core optics-core>@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
          (hsPkgs."optics-extra" or ((hsPkgs.pkgs-errors).buildDepError "optics-extra"))
          (hsPkgs."optics-th" or ((hsPkgs.pkgs-errors).buildDepError "optics-th"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "optics-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."indexed-profunctors" or ((hsPkgs.pkgs-errors).buildDepError "indexed-profunctors"))
            (hsPkgs."inspection-testing" or ((hsPkgs.pkgs-errors).buildDepError "inspection-testing"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optics" or ((hsPkgs.pkgs-errors).buildDepError "optics"))
            (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      benchmarks = {
        "folds" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."optics" or ((hsPkgs.pkgs-errors).buildDepError "optics"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        "traversals" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."optics" or ((hsPkgs.pkgs-errors).buildDepError "optics"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }