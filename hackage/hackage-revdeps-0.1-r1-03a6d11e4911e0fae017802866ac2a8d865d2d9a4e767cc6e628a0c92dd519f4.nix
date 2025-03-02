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
    flags = { cabal-syntax = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hackage-revdeps"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "";
      url = "";
      synopsis = "List Hackage reverse dependencies";
      description = "Command-line tool to list Hackage reverse dependencies.\nIt is different from how Hackage itself tracks them:\nthis tool accounts for all package components, including\ntests and benchmarks, and counts dependencies only\nacross the latest releases. The approach is roughly\nequivalent to what <https://packdeps.haskellers.com> used to do.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."alfred-margaret" or (errorHandler.buildDepError "alfred-margaret"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ (if flags.cabal-syntax
          then [
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          ]
          else [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ]);
        buildable = true;
      };
      exes = {
        "hackage-revdeps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cabal-install-parsers" or (errorHandler.buildDepError "cabal-install-parsers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hackage-revdeps" or (errorHandler.buildDepError "hackage-revdeps"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (if flags.cabal-syntax
            then [
              (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            ]
            else [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ]);
          buildable = true;
        };
        "hackage-revdeps-history" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cabal-install-parsers" or (errorHandler.buildDepError "cabal-install-parsers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hackage-revdeps" or (errorHandler.buildDepError "hackage-revdeps"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (if flags.cabal-syntax
            then [
              (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            ]
            else [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ]);
          buildable = true;
        };
      };
    };
  }