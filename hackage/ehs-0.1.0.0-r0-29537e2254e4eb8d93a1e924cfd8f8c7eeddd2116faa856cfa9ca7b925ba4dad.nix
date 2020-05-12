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
      identifier = { name = "ehs"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2014, Yu Fukuzawa ";
      maintainer = "Yu Fukuzawa <minpou.primer@gmail.com>";
      author = "Yu Fukuzawa";
      homepage = "http://github.com/minpou/ehs/";
      url = "";
      synopsis = "embedded Haskell by using quasiquotes.";
      description = "embedded Haskell by using quasiquotes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ];
        buildable = true;
        };
      };
    }