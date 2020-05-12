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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hpaste"; version = "1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2010-2013 by Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "http://hpaste.org/";
      url = "";
      synopsis = "Haskell paste web site.";
      description = "Haskell paste web site. Includes: syntax highlighting for\nvarious languages, HLint suggestions for Haskell, annotations,\nrevisions, diffs between revisions, announcement to IRC channels,\nbrowsing of author's pastes, spam reporting/deletion,\nSpamAssassin-based spam protection, secret/private pastes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpaste" = {
          depends = [
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."css" or (errorHandler.buildDepError "css"))
            (hsPkgs."named-formlet" or (errorHandler.buildDepError "named-formlet"))
            (hsPkgs."snap-app" or (errorHandler.buildDepError "snap-app"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."HJScript" or (errorHandler.buildDepError "HJScript"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            ];
          buildable = true;
          };
        };
      };
    }