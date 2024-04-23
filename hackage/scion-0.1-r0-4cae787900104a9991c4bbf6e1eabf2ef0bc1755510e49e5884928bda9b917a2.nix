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
    flags = { testing = false; server = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "scion"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Thomas Schilling <nominolo@googlemail.com>";
      homepage = "http://github.com/nominolo/scion";
      url = "";
      synopsis = "Haskell IDE library";
      description = "Scion is a Haskell library that aims to implement those parts of a\nHaskell IDE which are independent of a particular front-end.  Scion\nis based on the GHC API and Cabal.  It provides both a Haskell API and\na server for non-Haskell clients such as Emacs and Vim.\n\nSee the homepage (http://code.google.com/p/scion-lib/) and the\nREADME\n(http://github.com/nominolo/scion/blob/master/README.markdown) for\nmore information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."ghc-syb" or (errorHandler.buildDepError "ghc-syb"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
        ] ++ pkgs.lib.optional (flags.testing) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
        buildable = true;
      };
      exes = {
        "scion-server" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc-syb" or (errorHandler.buildDepError "ghc-syb"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ pkgs.lib.optionals (flags.server) [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-bytestring" or (errorHandler.buildDepError "network-bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ]) ++ pkgs.lib.optional (flags.testing) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          buildable = if !flags.server then false else true;
        };
      };
    };
  }