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
      identifier = { name = "geni-util"; version = "0.24"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "eric.kow@gmail.com";
      author = "Eric Kow";
      homepage = "http://kowey.github.io/GenI";
      url = "";
      synopsis = "Companion tools for use with the GenI surface realiser";
      description = "Tools included:\n\n* client - sends all test cases from a GenI suite to geniserver, and saves\nresults in the same format as batch mode GenI\n\n* report - generates an HTML summary of a GenI batch operation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."GenI" or (buildDepError "GenI"))
          (hsPkgs."geniserver" or (buildDepError "geniserver"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."http-streams" or (buildDepError "http-streams"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          ];
        };
      exes = {
        "geni-util" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."geni-util" or (buildDepError "geni-util"))
            (hsPkgs."GenI" or (buildDepError "GenI"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }