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
    flags = { tests = false; local-debian = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cabal-debian"; version = "4.19.1"; };
      license = "BSD-3-Clause";
      copyright = "";
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
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (if flags.local-debian
          then [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]
          else [ (hsPkgs."debian" or (errorHandler.buildDepError "debian")) ]);
        buildable = true;
        };
      exes = {
        "cabal-debian" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ] ++ (if flags.local-debian
            then [
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
              (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
              (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
              (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
              (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
              (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
              (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
              (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."text" or (errorHandler.buildDepError "text"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
              (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
              ]
            else [
              (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
              (hsPkgs."cabal-debian" or (errorHandler.buildDepError "cabal-debian"))
              ]);
          buildable = true;
          };
        "cabal-debian-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (if flags.local-debian
            then [
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
              (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
              (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
              (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
              (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
              (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
              (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
              (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
              (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."text" or (errorHandler.buildDepError "text"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
              (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
              ]
            else [
              (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
              (hsPkgs."cabal-debian" or (errorHandler.buildDepError "cabal-debian"))
              ]);
          buildable = true;
          };
        };
      };
    }