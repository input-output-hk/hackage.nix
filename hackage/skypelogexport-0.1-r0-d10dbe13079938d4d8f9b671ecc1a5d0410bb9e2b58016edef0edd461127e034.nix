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
      identifier = { name = "skypelogexport"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jdevelop@gmail.com";
      author = "Eugene Dzhurinsky";
      homepage = "https://github.com/jdevelop/skypelogexport/wiki";
      url = "";
      synopsis = "Export Skype chat logs to text files";
      description = "The purpose of this software is to export logs of Skype into\ntext files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "skypelogexport" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."ghc-binary" or (errorHandler.buildDepError "ghc-binary"))
            ];
          buildable = true;
          };
        };
      };
    }