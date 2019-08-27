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
      specVersion = "1.6";
      identifier = { name = "OpenAFP-Utils"; version = "1.4.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Assorted utilities to work with AFP data streams";
      description = "Assorted utilities to work with AFP data streams";
      buildType = "Simple";
      };
    components = {
      exes = {
        "afp2line2pdf" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."line2pdf" or (buildDepError "line2pdf"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "afp-olndump" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            ];
          };
        "afp-tledump" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            ];
          };
        "afp-dump" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            ];
          };
        "afp-page" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "afp-replace" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "afp-scanudc" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "afp-split" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "afp-split-scb" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "afp-split-tcb" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "afp-type" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "afp-udcfix" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ];
          };
        "afp-validate" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "afp2line" = {
          depends = [
            (hsPkgs."OpenAFP" or (buildDepError "OpenAFP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }