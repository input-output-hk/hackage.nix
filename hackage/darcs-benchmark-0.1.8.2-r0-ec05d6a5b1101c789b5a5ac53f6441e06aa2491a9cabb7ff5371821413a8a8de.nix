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
      identifier = { name = "darcs-benchmark"; version = "0.1.8.2"; };
      license = "BSD-3-Clause";
      copyright = "2009 Petr Rockai <me@mornfall.net>";
      maintainer = "Darcs Project <darcs-users@darcs.net>";
      author = "Eric Kow <kowey@darcs.net>, Simon Michael <simon@joyful.com>\nand Petr Rockai <me@mornfall.net>";
      homepage = "http://wiki.darcs.net/Development/Benchmarks";
      url = "";
      synopsis = "Comparative benchmark suite for darcs.";
      description = "A simple tool to compare performance of different Darcs 2.x\ninstances.  The program can download a set of test repositories,\nor you can provide your own. Run the program without parameters to\nget help.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "darcs-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."tabular" or (buildDepError "tabular"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."uvector" or (buildDepError "uvector"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."hs-gchart" or (buildDepError "hs-gchart"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          };
        };
      };
    }