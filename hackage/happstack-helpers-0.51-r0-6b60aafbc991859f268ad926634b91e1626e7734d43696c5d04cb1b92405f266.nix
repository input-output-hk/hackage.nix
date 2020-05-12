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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-helpers"; version = "0.51"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Thomas Hartman";
      maintainer = "Creighton Hogg <wchogg at gmail>";
      author = "Thomas Hartman, Eelco Lempsink, Jeremy Shaw, Creighton Hogg";
      homepage = "http://patch-tag.com/r/tphyahoo/HAppSHelpers/home";
      url = "";
      synopsis = "Convenience functions for Happstack.";
      description = "Functions I found I was using repeatedly when programming Happstack based web-apps.\nI'll deprecate whatever bits of this make their way into the Happstack core on hackage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."HStringTemplateHelpers" or (errorHandler.buildDepError "HStringTemplateHelpers"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."happstack-ixset" or (errorHandler.buildDepError "happstack-ixset"))
          (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."PBKDF2" or (errorHandler.buildDepError "PBKDF2"))
          (hsPkgs."DebugTraceHelpers" or (errorHandler.buildDepError "DebugTraceHelpers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }