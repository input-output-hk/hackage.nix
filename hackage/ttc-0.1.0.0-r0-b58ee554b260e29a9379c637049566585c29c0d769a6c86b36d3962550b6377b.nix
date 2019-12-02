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
      example-invalid = false;
      example-mkvalid = false;
      example-prompt = false;
      example-uname = false;
      example-valid = false;
      examples = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "ttc"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2019 Travis Cardwell";
      maintainer = "Travis Cardwell <travis.cardwell@extrema.is>";
      author = "Travis Cardwell <travis.cardwell@extrema.is>";
      homepage = "https://github.com/ExtremaIS/ttc-haskell#readme";
      url = "";
      synopsis = "Textual Type Classes";
      description = "This library provides type classes for conversion between data types and\ntextual data types (strings).  Please see the README on GitHub at\n<https://github.com/ExtremaIS/ttc-haskell#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "example-invalid" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."ttc" or (buildDepError "ttc"))
            ];
          buildable = if flags.example-invalid then true else false;
          };
        "example-mkvalid" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."ttc" or (buildDepError "ttc"))
            ];
          buildable = if flags.examples || flags.example-mkvalid
            then true
            else false;
          };
        "example-prompt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."ttc" or (buildDepError "ttc"))
            ];
          buildable = if flags.examples || flags.example-prompt
            then true
            else false;
          };
        "example-uname" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."ttc" or (buildDepError "ttc"))
            ];
          buildable = if flags.examples || flags.example-uname
            then true
            else false;
          };
        "example-valid" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."ttc" or (buildDepError "ttc"))
            ];
          buildable = if flags.examples || flags.example-valid
            then true
            else false;
          };
        };
      tests = {
        "ttc-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."ttc" or (buildDepError "ttc"))
            ];
          buildable = true;
          };
        };
      };
    }