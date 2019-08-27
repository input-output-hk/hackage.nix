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
      linux-bbone-tests = false;
      test-doctests = true;
      test-hlint = true;
      examples = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hpio"; version = "0.8.0.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Quixoftic, LLC";
      maintainer = "Drew Hess <dhess-src@quixoftic.com>";
      author = "Drew Hess <dhess-src@quixoftic.com>";
      homepage = "https://github.com/quixoftic/hpio";
      url = "";
      synopsis = "Monads for GPIO in Haskell";
      description = "This package provides an embedded DSL for writing cross-platform\nGPIO programs in Haskell. Currently only Linux is supported (via the\n@sysfs@ filesystem), but other Unix GPIO platforms will be supported\nin the future.\n\nMonads and low-level actions are also provided for each supported\nplatform's native GPIO API, if you want to program directly to\nthe platform API.\n\nExample programs are provided in the 'examples' directory of the\nsource code distribution. There is also a \"System.GPIO.Tutorial\"\nmodule, which explains how to use the cross-platform DSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mtl-compat" or (buildDepError "mtl-compat"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unix-bytestring" or (buildDepError "unix-bytestring"))
          ];
        };
      exes = {
        "hpio-sysfs-example" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."hpio" or (buildDepError "hpio"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (buildDepError "mtl-compat"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ];
          };
        "hpio-example" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hpio" or (buildDepError "hpio"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (buildDepError "mtl-compat"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ];
          };
        "hpio-reader-example" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hpio" or (buildDepError "hpio"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (buildDepError "mtl-compat"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ];
          };
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        "doctest" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests || compiler.isGhc && (compiler.version).lt "7.10")) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (buildDepError "mtl-compat"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unix-bytestring" or (buildDepError "unix-bytestring"))
            ];
          };
        };
      };
    }