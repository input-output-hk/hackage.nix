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
    flags = {
      with-sizeable = false;
      test-properties = true;
      test-strict = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "data-stringmap"; version = "1.0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Uwe Schmidt (uwe@fh-wedel.de), Sebastian Philipp (sebastian@spawnhost.de)";
      author = "Uwe Schmidt, Sebastian Philipp";
      homepage = "";
      url = "";
      synopsis = "An efficient implementation of maps from strings to arbitrary values";
      description = "An efficient implementation of maps from strings to arbitrary values.\nValues can associated with an arbitrary byte key.\nSearching for keys is very fast, but\nthe prefix tree probably consumes more memory than\n\"Data.Map\". The main differences are the special\n'prefixFind' functions, which can be used to perform prefix queries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ] ++ (pkgs.lib).optional (flags.test-strict) (hsPkgs."bytestring" or (buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.with-sizeable) (hsPkgs."data-size" or (buildDepError "data-size"));
        };
      tests = {
        "properties" = {
          depends = (pkgs.lib).optionals (!(!flags.test-properties)) ([
            (hsPkgs."data-stringmap" or (buildDepError "data-stringmap"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-heap-view" or (buildDepError "ghc-heap-view"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ] ++ (pkgs.lib).optional (flags.with-sizeable) (hsPkgs."data-size" or (buildDepError "data-size")));
          };
        "strict" = {
          depends = (pkgs.lib).optionals (!(!flags.test-strict)) ([
            (hsPkgs."data-stringmap" or (buildDepError "data-stringmap"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-heap-view" or (buildDepError "ghc-heap-view"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ] ++ (pkgs.lib).optional (flags.with-sizeable) (hsPkgs."data-size" or (buildDepError "data-size")));
          };
        };
      };
    }