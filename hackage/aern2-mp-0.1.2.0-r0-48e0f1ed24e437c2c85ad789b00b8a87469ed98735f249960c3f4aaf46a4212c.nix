let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mpfr = true; mpfrrounded = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "aern2-mp"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017 Michal Konecny";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/aern2";
      url = "";
      synopsis = "Multi-precision floats via MPFR";
      description = "Arbitrary-precision dyadic numbers and interval arithmetic, via the types:\n\n* Dyadic:  variable-precision floats with exact ring operations\n\n* MPBall: float ± error bound with field & elementary (interval-like) operations\n\nBy default, using hmpfr when compiling with ghc >=7.10.  Older versions of ghc are no longer tested.\n\nSet flag MPFRRounded to bind MPFR not via hmpfr but via a tweaked version of package\nrounded:\n\n* https://github.com/michalkonecny/rounded\n\nThis backend is considerably faster than hmpfr.\nIt is likely to become the default in future.\n\nThere is a plan to add an Integer-only backend so that this library can\nbe used without MPFR.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mixed-types-num" or (buildDepError "mixed-types-num"))
          ] ++ (pkgs.lib).optionals (flags.mpfr) (if compiler.isGhc && (compiler.version).ge "7.10"
          then if flags.mpfrrounded
            then [ (hsPkgs."rounded" or (buildDepError "rounded")) ]
            else [
              (hsPkgs."hmpfr" or (buildDepError "hmpfr"))
              (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
              ]
          else [
            (hsPkgs."haskell-mpfr" or (buildDepError "haskell-mpfr"))
            (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
            ]);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aern2-mp" or (buildDepError "aern2-mp"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }