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
      identifier = { name = "ginsu"; version = "0.8.2.1"; };
      license = "MIT";
      copyright = "2002-2009 John Meacham <john@repetae.net>\n2011-2012 Dylan Simon <dylan@dylex.net>";
      maintainer = "dylan@dylex.net";
      author = "John Meacham <john@foo.net>\nDylan Simon <dylan@dylex.net>";
      homepage = "http://repetae.net/computer/ginsu/";
      url = "";
      synopsis = "Ginsu Gale Client";
      description = "Ginsu is a client for the gale chat system. It is designed to be powerful and above all stable, as well as having a quick learning curve.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ginsu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
          libs = [
            (pkgs."ssl" or (errorHandler.sysDepError "ssl"))
            (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
          ];
          buildable = true;
        };
      };
    };
  }