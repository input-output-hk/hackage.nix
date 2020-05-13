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
      specVersion = "1.6";
      identifier = { name = "HaskellNet"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Wills <wrwills@gmail.com>";
      author = "Jun Mukai";
      homepage = "https://patch-tag.com/r/wrwills/HaskellNet";
      url = "";
      synopsis = "network related libraries such as POP3, SMTP, IMAP";
      description = "Originally written for Google SOC, provides network related libraries such as POP3, SMTP, IMAP.\nAll I have done is get the project to compile using cabal, check that these libraries basically\nwork, and add some examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }