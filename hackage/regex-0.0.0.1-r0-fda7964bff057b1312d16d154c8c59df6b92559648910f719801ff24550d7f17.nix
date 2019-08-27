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
      specVersion = "1.14";
      identifier = { name = "regex"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan";
      maintainer = "chris.dornan@irisconnect.co.uk";
      author = "Chris Dornan";
      homepage = "https://iconnect.github.io/regex";
      url = "";
      synopsis = "A Regular Expression Toolkit for regex-base";
      description = "A Regular Expression Toolkit for regex-base with\nCompile-time checking of RE syntax, data types for\nmatches and captures, a text replacement toolkit,\nportable options, high-level Awk-like tools\nfor building text processing apps, regular expression\nmacros and test bench, a tutorial and copious examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."heredoc" or (buildDepError "heredoc"))
          (hsPkgs."hsyslog" or (buildDepError "hsyslog"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
          (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
          (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
          (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      exes = {
        "re-gen-modules" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "re-include" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "re-pp" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "re-include-test" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "re-gen-modules-test" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "re-nginx-log-processor" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hsyslog" or (buildDepError "hsyslog"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        "re-pp-test" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "re-tests" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
            (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "re-tutorial" = {
          depends = [
            (hsPkgs."regex" or (buildDepError "regex"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            (hsPkgs."hsyslog" or (buildDepError "hsyslog"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
            (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }