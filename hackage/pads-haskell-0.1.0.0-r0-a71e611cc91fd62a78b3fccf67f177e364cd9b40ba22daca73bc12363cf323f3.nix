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
      specVersion = "1.12";
      identifier = { name = "pads-haskell"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2011 Kathleen Fisher & John Launchbury";
      maintainer = "karl@cs.tufts.edu";
      author = "Kathleen Fisher and John Launchbury";
      homepage = "https://github.com/padsproj/pads-haskell#readme";
      url = "";
      synopsis = "PADS data description language for Haskell.";
      description = "Please see the README on Github at <https://github.com/padsproj/pads-haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."byteorder" or (buildDepError "byteorder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteorder" or (buildDepError "byteorder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."pads-haskell" or (buildDepError "pads-haskell"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "extended" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteorder" or (buildDepError "byteorder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."pads-haskell" or (buildDepError "pads-haskell"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "gen" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteorder" or (buildDepError "byteorder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."pads-haskell" or (buildDepError "pads-haskell"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }