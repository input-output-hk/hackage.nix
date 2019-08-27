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
      llvm-fast = false;
      library = false;
      development = false;
      parallel-gc = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "tweet-hs"; version = "1.0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "2016, 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/command-line-tweeter#readme";
      url = "";
      synopsis = "Command-line tool for twitter";
      description = "a Command Line Interface Tweeter";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."htoml" or (buildDepError "htoml"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          ];
        };
      exes = {
        "tweet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tweet-hs" or (buildDepError "tweet-hs"))
            ];
          };
        };
      tests = {
        "tweeths-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tweet-hs" or (buildDepError "tweet-hs"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      benchmarks = {
        "tweeths-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."tweet-hs" or (buildDepError "tweet-hs"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            ];
          };
        };
      };
    }