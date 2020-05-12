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
      specVersion = "1.10";
      identifier = { name = "yesod-fast-devel"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tacla.yamada@gmail.com";
      author = "Arne Link, Pedro Tacla Yamada";
      homepage = "https://github.com/haskellbr/yesod-fast-devel#readme";
      url = "";
      synopsis = "Fast live-reloading for yesod applications.";
      description = "https://github.com/haskellbr/yesod-fast-devel";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yesod-fast-devel" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }