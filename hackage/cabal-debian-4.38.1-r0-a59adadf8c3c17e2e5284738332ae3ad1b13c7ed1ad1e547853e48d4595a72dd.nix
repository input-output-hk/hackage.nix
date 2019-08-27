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
    flags = { pretty-112 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-debian"; version = "4.38.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2014, David Fox, Jeremy Shaw";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "https://github.com/ddssff/cabal-debian";
      url = "";
      synopsis = "Create a Debianization for a Cabal package";
      description = "This package supports the generation of a package Debianization (i.e.\nthe files in the @debian@ subdirectory) for a cabal package,\neither through a library API or using the cabal-debian executable.\nFor documentation of the executable, run\n@cabal-debian --help@, for documentation of the library API follow\nthe link to the @Debian.Debianize@ module below.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."debian" or (buildDepError "debian"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hsemail" or (buildDepError "hsemail"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."memoize" or (buildDepError "memoize"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."newtype-generics" or (buildDepError "newtype-generics"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."set-extra" or (buildDepError "set-extra"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."Unixutils" or (buildDepError "Unixutils"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          ] ++ (if flags.pretty-112
          then [ (hsPkgs."pretty" or (buildDepError "pretty")) ]
          else [
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
            ]);
        };
      exes = {
        "cabal-debian" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabal-debian" or (buildDepError "cabal-debian"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."debian" or (buildDepError "debian"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."Unixutils" or (buildDepError "Unixutils"))
            ] ++ (if flags.pretty-112
            then [ (hsPkgs."pretty" or (buildDepError "pretty")) ]
            else [
              (hsPkgs."pretty" or (buildDepError "pretty"))
              (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
              ]);
          };
        };
      tests = {
        "cabal-debian-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabal-debian" or (buildDepError "cabal-debian"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."debian" or (buildDepError "debian"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.pretty-112
            then [ (hsPkgs."pretty" or (buildDepError "pretty")) ]
            else [
              (hsPkgs."pretty" or (buildDepError "pretty"))
              (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
              ]);
          };
        };
      };
    }