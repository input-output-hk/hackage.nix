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
      identifier = { name = "Bitly"; version = "0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Astanin <s.astanin@gmail.com>";
      author = "";
      homepage = "http://bitbucket.org/jetxee/hs-bitly/";
      url = "";
      synopsis = "A library to access bit.ly URL shortener.";
      description = "This package allows to use bit.ly and j.mp URL\nshortening service from Haskell. Currently it supports\nshorten and expand requests.\n\nAPI key is required. Please find yours at <https://bitly.com/a/account>.\n\nConfiguration file (`~/.bitly`) format:\n\n> login = your_bit.ly_login\n> apikey = your_API_key\n\nFor command line utility see `bitly-cli` package.";
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
    };
  }