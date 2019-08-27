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
    flags = { split-base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hackport"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Gentoo Haskell team <haskell@gentoo.org>";
      author = "Henning Günther, Duncan Coutts, Lennart Kolmodin";
      homepage = "";
      url = "";
      synopsis = "Hackage and Portage integration tool";
      description = "A command line tool to manage an overlay of Gentoo ebuilds\nthat are generated from a hackage repo of Cabal packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackport" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ] ++ (if flags.split-base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        "hackport-guess-ghc-version" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            ] ++ (if flags.split-base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        };
      tests = {
        "test-resolve-category" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."xml" or (buildDepError "xml"))
            ];
          };
        };
      };
    }