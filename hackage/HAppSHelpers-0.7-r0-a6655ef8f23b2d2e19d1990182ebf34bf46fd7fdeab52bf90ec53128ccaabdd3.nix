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
      specVersion = "0";
      identifier = { name = "HAppSHelpers"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Thomas Hartman";
      maintainer = "Thomas Hartman <thomashartman1 at gmail>";
      author = "Thomas Hartman & Eelco Lempsink & Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "Convenience functions for HAppS. ";
      description = "Functions I found I was using repeatedly when programming HAppS based web-apps.\nI'll deprecate whatever bits of this make their way into the HAppS core on hackage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HAppS-Server" or (errorHandler.buildDepError "HAppS-Server"))
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
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."HAppS-IxSet" or (errorHandler.buildDepError "HAppS-IxSet"))
          (hsPkgs."HAppS-State" or (errorHandler.buildDepError "HAppS-State"))
          (hsPkgs."PBKDF2" or (errorHandler.buildDepError "PBKDF2"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."HAppS-Data" or (errorHandler.buildDepError "HAppS-Data"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        buildable = true;
        };
      };
    }