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
      identifier = { name = "Bitly"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Astanin <s.astanin@gmail.com>";
      author = "";
      homepage = "http://bitbucket.org/jetxee/hs-bitly/";
      url = "";
      synopsis = "A library and a command line tool to access bit.ly URL shortener.";
      description = "This package allows to use bit.ly and j.mp URL\nshortening service from Haskell. Currently it supports\nshorten and expand requests.\n\nAPI key is required. Please find yours at <http://bit.ly/account/>.\n\nConfiguration file (`~/.bitly`) format:\n\n> login = your_bit.ly_login\n> apikey = your_API_key\n\nExamples (command line utility):\n\n> $ echo \"Text with an URL: http://example.com/\" | bitly\n> Text with an URL: http://bit.ly/2eSq1z\n> $ bitly shorten http://example.com\n> http://bit.ly/2eSq1z\n> $ bitly expand http://bit.ly/2eSq1z\n> http://example.com/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
        ];
        buildable = true;
      };
      exes = {
        "bitly" = {
          depends = [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
          ];
          buildable = true;
        };
      };
    };
  }