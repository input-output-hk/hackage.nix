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
      identifier = { name = "stratux"; version = "0.0.10"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2017 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/stratux";
      url = "";
      synopsis = "A library for stratux";
      description = "A library for stratux <http://stratux.me/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stratux-types" or (errorHandler.buildDepError "stratux-types"))
          (hsPkgs."stratux-http" or (errorHandler.buildDepError "stratux-http"))
          (hsPkgs."stratux-websockets" or (errorHandler.buildDepError "stratux-websockets"))
          ];
        buildable = true;
        };
      };
    }