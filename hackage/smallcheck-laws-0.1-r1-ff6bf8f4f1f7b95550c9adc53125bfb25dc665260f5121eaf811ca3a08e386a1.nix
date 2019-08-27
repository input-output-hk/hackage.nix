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
      specVersion = "1.10";
      identifier = { name = "smallcheck-laws"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "";
      url = "";
      synopsis = "SmallCheck properties for standard type classes";
      description = "Automatic `smallcheck` properties and `tasty` runners for:\n\n- Monoid laws.\n\n- Functor laws.\n\n- Applicative laws.\n\n- Monad laws.\n\nUse the @<https://hackage.haskell.org/package/tasty Tasty>@ modules for\npreassembled tasty runners, your data types need to be instances of\n@<https://hackage.haskell.org/package/smallcheck-1.1.1/docs/Test-SmallCheck-Series.html#t:Serial Serial>@.\nFor more granular control on how the\n@<https://hackage.haskell.org/package/smallcheck SmallCheck>@\n@<https://hackage.haskell.org/package/smallcheck-1.1.1/docs/Test-SmallCheck-Series.html#t:Series Series>@\nare created use the modules under @Test.SmallCheck.Laws@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
          (hsPkgs."smallcheck-series" or (buildDepError "smallcheck-series"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers" or (buildDepError "transformers"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (buildDepError "tagged"));
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."smallcheck-laws" or (buildDepError "smallcheck-laws"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (buildDepError "tagged"));
          };
        };
      };
    }