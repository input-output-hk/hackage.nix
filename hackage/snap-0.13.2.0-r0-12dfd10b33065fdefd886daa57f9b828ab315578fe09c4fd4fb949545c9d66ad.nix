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
    flags = { old-base = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "snap"; version = "0.13.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Ozgun Ataman, Doug Beardsley, Gregory Collins, Carl Howells, Chris Smith";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Top-level package for the Snap Web Framework";
      description = "This is the top-level package for the official Snap Framework libraries.\nIt includes:\n\n* The Snaplets API\n\n* The \\\"snap\\\" executable program for generating starter projects\n\n* Snaplets for sessions, authentication, and templates\n\nTo get started, issue the following sequence of commands:\n\n@$ cabal install snap\n$ mkdir myproject\n$ cd myproject\n$ snap init@\n\nIf you have trouble or any questions, see our FAQ page\n(<http://snapframework.com/faq>) or the documentation\n(<http://snapframework.com/docs>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."pwstore-fast" or (errorHandler.buildDepError "pwstore-fast"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      exes = {
        "snap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }