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
    flags = { tests = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "pipes-cliff"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/pipes-cliff";
      url = "";
      synopsis = "Streaming to and from subprocesses using Pipes";
      description = "pipes-cliff helps you spawn subprocesses and send data to and\nfrom them with the Pipes library.\nSubprocesses are opened using the\nprocess library, and the processes and handles are properly\ncleaned up even if there are exceptions.\n\nThough this library uses the Pipes library, I have not coordinated\nwith the author of the Pipes library in any way.  Any bugs or design\nflaws are mine and should be reported to\n\n<http://www.github.com/massysett/pipes-cliff/issues>\n\nFor more information, see the README.md file, which is located in the\nsource tarball and at\n\n<https://github.com/massysett/pipes-cliff>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
          ];
        buildable = true;
        };
      exes = {
        "numsToLess" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            ];
          buildable = if flags.tests then true else false;
          };
        "alphaNumbers" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            ];
          buildable = if flags.tests then true else false;
          };
        "limitedAlphaNumbers" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            ];
          buildable = if flags.tests then true else false;
          };
        "alphaNumbersByteString" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            ];
          buildable = if flags.tests then true else false;
          };
        "standardOutputAndError" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            ];
          buildable = if flags.tests then true else false;
          };
        };
      };
    }