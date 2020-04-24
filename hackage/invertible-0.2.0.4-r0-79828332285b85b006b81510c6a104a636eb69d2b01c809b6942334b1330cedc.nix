{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      arrows = false;
      invariant = true;
      lens = true;
      partial-isomorphisms = true;
      piso = false;
      semigroupoids = true;
      typecompose = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "invertible"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "bidirectional arrows, bijective functions, and invariant functors";
      description = "Representations and operations for bidirectional arrows (total isomorphisms: an\narrow paired with its inverse).  Classes for invariant functors and monoidal\nfunctors.  Includes a number of useful bijections and operations, as well as\ninteroperability with related packages.\n\nMost users will want to import one or more of \"Data.Invertible\" qualified, \"Control.Invertible.Monoidal\" unqualified, and any additional compatibility modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (flags.arrows) (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))) ++ (pkgs.lib).optional (flags.invariant) (hsPkgs."invariant" or ((hsPkgs.pkgs-errors).buildDepError "invariant"))) ++ (pkgs.lib).optional (flags.lens) (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))) ++ (pkgs.lib).optional (flags.partial-isomorphisms) (hsPkgs."partial-isomorphisms" or ((hsPkgs.pkgs-errors).buildDepError "partial-isomorphisms"))) ++ (pkgs.lib).optional (flags.piso) (hsPkgs."Piso" or ((hsPkgs.pkgs-errors).buildDepError "Piso"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))) ++ (pkgs.lib).optional (flags.typecompose) (hsPkgs."TypeCompose" or ((hsPkgs.pkgs-errors).buildDepError "TypeCompose"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."invertible" or ((hsPkgs.pkgs-errors).buildDepError "invertible"))
            ];
          buildable = true;
          };
        };
      };
    }