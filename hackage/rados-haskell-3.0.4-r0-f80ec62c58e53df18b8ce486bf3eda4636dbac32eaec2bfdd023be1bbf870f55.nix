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
    flags = { atomic_writes = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rados-haskell"; version = "3.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Anchor Hosting";
      maintainer = "pingu@ponies.io";
      author = "Christian Marie";
      homepage = "github";
      url = "";
      synopsis = "librados haskell bindings";
      description = "These bindings do not cover the entire API, they support\nread, write, stat, creation, and unlinking with shared\nlocks.\n\nYou can perform these actions with combinations of sync,\nasync, and atomic execution.\n\nThe \"System.Rados.Monadic\" module is recommended for\nsafety/ease of use.\n\nThe \"System.Rados.Base\" module is possibly more flexible\nbut requires you to clean up your own resources and track\na lot of state.\n\nNote: To use atomic writes, you must build with the\n/atomic_writes/ build flag.\n\nStability: These bindings are not as polished as they could be, but\nare in production use at Anchor Hosting as of Jan 2014.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."async" or (buildDepError "async"))
          ];
        libs = [ (pkgs."rados" or (sysDepError "rados")) ];
        buildable = true;
        };
      tests = {
        "check" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."rados-haskell" or (buildDepError "rados-haskell"))
            ];
          libs = [ (pkgs."rados" or (sysDepError "rados")) ];
          buildable = true;
          };
        };
      benchmarks = {
        "async" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."rados-haskell" or (buildDepError "rados-haskell"))
            ];
          buildable = true;
          };
        "concurrency" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."rados-haskell" or (buildDepError "rados-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }