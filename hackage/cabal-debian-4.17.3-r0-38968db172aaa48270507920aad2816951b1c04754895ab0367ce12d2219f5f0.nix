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
    flags = { tests = false; ghcjs-support = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cabal-debian"; version = "4.17.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "https://github.com/ddssff/cabal-debian";
      url = "";
      synopsis = "Create a debianization for a cabal package";
      description = "This package provides two methods for generating the debianization\n(i.e. the contents of the 'debian' subdirectory) for a cabal package.\nAn executable named cabal-debian, and a library API to handle more\ncomplex packaging issues.  For documentation of the executable run\n@cabal-debian --help@, for documentation of the library API follow\nthe link to the @Debian.Debianize@ module below.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
          (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
          ] ++ [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
        buildable = true;
        };
      exes = {
        "cabal-debian" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-debian" or (errorHandler.buildDepError "cabal-debian"))
            (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
          buildable = true;
          };
        "cabal-debian-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-debian" or (errorHandler.buildDepError "cabal-debian"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
            (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
          buildable = true;
          };
        };
      };
    }