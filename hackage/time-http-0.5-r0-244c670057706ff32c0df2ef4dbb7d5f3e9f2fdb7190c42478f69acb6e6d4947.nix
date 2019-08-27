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
      identifier = { name = "time-http"; version = "0.5"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho AT cielonegro DOT org>";
      author = "PHO <pho AT cielonegro DOT org>";
      homepage = "http://cielonegro.org/HTTPDateTime.html";
      url = "";
      synopsis = "Parse and format HTTP/1.1 Date and Time strings";
      description = "This package provides functionalities to parse and format\nvarious Date and Time formats allowed in HTTP\\/1.1\n(<http://tools.ietf.org/html/rfc2616#section-3.3>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ascii" or (buildDepError "ascii"))
          (hsPkgs."attempt" or (buildDepError "attempt"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."blaze-textual" or (buildDepError "blaze-textual"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."convertible-text" or (buildDepError "convertible-text"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      tests = {
        "test-time-http" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."ascii" or (buildDepError "ascii"))
            (hsPkgs."attempt" or (buildDepError "attempt"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."blaze-textual" or (buildDepError "blaze-textual"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."convertible-text" or (buildDepError "convertible-text"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."failure" or (buildDepError "failure"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }