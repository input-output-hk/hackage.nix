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
    flags = { tests = false; ghcjs-support = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cabal-debian"; version = "4.15"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "http://src.seereason.com/cabal-debian";
      url = "";
      synopsis = "Create a debianization for a cabal package";
      description = "This package provides two methods for generating the debianization\n(i.e. the contents of the 'debian' subdirectory) for a cabal package.\nAn executable named cabal-debian, and a library API to handle more\ncomplex packaging issues.  For documentation of the executable run\n@cabal-debian --help@, for documentation of the library API follow\nthe link to the @Debian.Debianize@ module below.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-lens" or (buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or (buildDepError "data-lens-template"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hsemail" or (buildDepError "hsemail"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."memoize" or (buildDepError "memoize"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
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
          (hsPkgs."debian" or (buildDepError "debian"))
          ] ++ [ (hsPkgs."Cabal" or (buildDepError "Cabal")) ];
        };
      exes = {
        "cabal-debian" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabal-debian" or (buildDepError "cabal-debian"))
            (hsPkgs."data-lens" or (buildDepError "data-lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ [ (hsPkgs."Cabal" or (buildDepError "Cabal")) ];
          };
        "cabal-debian-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabal-debian" or (buildDepError "cabal-debian"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-lens" or (buildDepError "data-lens"))
            (hsPkgs."debian" or (buildDepError "debian"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ [ (hsPkgs."Cabal" or (buildDepError "Cabal")) ];
          };
        };
      };
    }