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
      hpc = false;
      threaded = false;
      lhc-regress = false;
      lhc-pkg = true;
      with-libs = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "lhc"; version = "0.10"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lhc@projects.haskell.org";
      author = "David Himmelstrup, Austin Seipp";
      homepage = "http://lhc.seize.it/";
      url = "";
      synopsis = "LHC Haskell Compiler";
      description = "lhc is a haskell compiler which aims to produce the most efficient programs possible via whole\nprogram analysis and other optimizations.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "lhc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."digest" or (buildDepError "digest"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."core" or (buildDepError "core"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          };
        "lhc-regress" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck" or (buildDepError "test-framework-quickcheck"))
            ];
          };
        "lhc-pkg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          };
        };
      };
    }