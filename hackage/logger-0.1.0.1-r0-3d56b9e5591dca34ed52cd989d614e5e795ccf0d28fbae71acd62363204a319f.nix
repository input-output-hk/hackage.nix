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
      identifier = { name = "logger"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2015 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/haskell-logger";
      url = "";
      synopsis = "Fast & extensible logging framework";
      description = "Logging is a fast and extensible Haskell logging framework.\n\nLogging allows you to log any kind of messages in both IO as well as pure code, depending on the informations you want to log.\n\nThe framework bases on the idea of logger transformer stack defining the way it works. You can build your own stack to highly tailor the behaviour to your needs, starting with such simple things, like logging messages to a list, ending on logging compile-time, priority-filtered messages from different threads and gathering them in other logger thread.\n\nFor detailed documentation and examples look at the ''System.Log'' module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
        ];
        buildable = true;
      };
    };
  }