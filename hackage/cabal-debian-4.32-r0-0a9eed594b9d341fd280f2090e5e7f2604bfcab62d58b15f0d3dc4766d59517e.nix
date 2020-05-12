{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { pretty-112 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-debian"; version = "4.32"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."newtype-generics" or (errorHandler.buildDepError "newtype-generics"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          ] ++ (if flags.pretty-112
          then [ (hsPkgs."pretty" or (errorHandler.buildDepError "pretty")) ]
          else [
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
            ]);
        buildable = true;
        };
      exes = {
        "cabal-debian" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-debian" or (errorHandler.buildDepError "cabal-debian"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
            ] ++ (if flags.pretty-112
            then [ (hsPkgs."pretty" or (errorHandler.buildDepError "pretty")) ]
            else [
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "cabal-debian-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-debian" or (errorHandler.buildDepError "cabal-debian"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (if flags.pretty-112
            then [ (hsPkgs."pretty" or (errorHandler.buildDepError "pretty")) ]
            else [
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
              ]);
          buildable = true;
          };
        };
      };
    }