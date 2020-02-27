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
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "lorentz"; version = "0.1.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "2019-2020 Tocqueville Group";
      maintainer = "Serokell <hi@serokell.io>";
      author = "camlCase, Serokell, Tocqueville Group";
      homepage = "https://gitlab.com/morley-framework/morley";
      url = "";
      synopsis = "EDSL for the Michelson Language";
      description = "Lorentz is a powerful meta-programming tool which allows one to write Michelson contracts directly in Haskell. It has the same instructions as Michelson, but operates on Haskell values and allows one to use Haskell features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
          (hsPkgs."bimap" or (buildDepError "bimap"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
          (hsPkgs."fmt" or (buildDepError "fmt"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."interpolate" or (buildDepError "interpolate"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."morley" or (buildDepError "morley"))
          (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
          (hsPkgs."named" or (buildDepError "named"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          ];
        buildable = true;
        };
      tests = {
        "lorentz-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."bimap" or (buildDepError "bimap"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."lorentz" or (buildDepError "lorentz"))
            (hsPkgs."morley" or (buildDepError "morley"))
            (hsPkgs."morley-prelude" or (buildDepError "morley-prelude"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."spoon" or (buildDepError "spoon"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit-compat" or (buildDepError "tasty-hunit-compat"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."type-spec" or (buildDepError "type-spec"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or (buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }